class ReservationsController < ApplicationController
  def new
    @talk = Talk.find_by(id: params[:talk_id])
    @talk.update(count: @talk.count + 1)
    @reservation = Reservation.new
    if @talk.reservations.count >= @talk.max_reservations
      flash[:danger] = 'ขออภัย ที่นั่งในช่วงนี้เต็มแล้ว'
      redirect_to root_path
    end
  end

  def create
    @talk = Talk.find_by(id: params[:talk_id])
    @talk.update(count: @talk.count + 1)
    if @talk.reservations.count >= @talk.max_reservations
      flash[:danger] = 'ขออภัย ที่นั่งในช่วงนี้เต็มแล้ว'
      redirect_to root_path
    else
      if Reservation.where(email: reservation_params[:email], talk: @talk).any?
        flash[:danger] = 'ขออภัย คุณได้ทำการลงทะเบียนแล้ว'
        redirect_to root_path
      else
        @reservation = @talk.reservations.new(reservation_params)
        @reservation.status = Reservation::STATUS_NOT_CONFIRMED
        if @reservation.valid?
          @reservation.save
          flash[:success] = 'ลงทะเบียนเรียบน้อย ระบบได้ทำการส่งอีเมลไปหาท่าน เพื่อให้ท่านยืนยันการเข้าร่วมงาน หากไม่ยืนยันภายใน 24 ชั่วโมง การสำรองที่นั่งนี้จะถูกยกเลิก'
          Resque.enqueue(MailingJob, @reservation.id)
          redirect_to root_path
        else
          render 'new'
        end
      end
    end
  end

  def confirm
    reservation = Reservation.find_by(token: params[:token])
    reservation.update(status: Reservation::STATUS_CONFIRMED)
    Resque.enqueue(MailingJob, reservation.id)
    flash[:success] = 'ยืนยันการเข้าร่วมงานเรียบร้อย ระบบได้ส่งบัตรเข้าร่วมการฟังเสวนาให้ท่านทางอีเมลเรียบร้อยแล้ว'
    redirect_to root_path
  end

  def ticket
    @reservation = Reservation.find_by(id: params[:id])
  end

  private
  def reservation_params
    params.require(:reservation).permit(:title, :fname, :lname, :telephone, :email)
  end
end
