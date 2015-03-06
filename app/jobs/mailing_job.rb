class MailingJob
  @queue = :tu_openhouse_talk_queue
  def self.perform(reservation_id)
    reservation = Reservation.find_by(id: reservation_id)
    if reservation.status == Reservation::STATUS_NOT_CONFIRMED
      ConfirmationMailer.confirmation_email(reservation).deliver
    else
      ConfirmationMailer.confirmed_email(reservation).deliver
    end
  end
end