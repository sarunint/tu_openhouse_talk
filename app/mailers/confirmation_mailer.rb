class ConfirmationMailer < ActionMailer::Base
  default from: "openhouse@triamudom.ac.th"
  def confirmation_email(reservation)
    @reservation = reservation
    @confirmation_url = confirm_talk_reservation_url(reservation.talk, reservation, reservation.token)
    mail(to: @reservation.email, subject: 'ยินยันการเข้าร่วมงาน 77 ปี ต.อ. เสวนาวิชาการ')
  end

  def confirmed_email(reservation)
    @reservation = reservation
    attachments['ticket.pdf'] = ReservationsController.new.render_to_string('ticket', locals: { :@reservation => reservation })
    mail(to: @reservation.email, subject: 'รายละเอียดการเข้าร่วมงาน 77 ปี ต.อ. เสวนาวิชาการ')
  end
end
