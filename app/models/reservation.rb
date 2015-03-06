class Reservation < ActiveRecord::Base
  belongs_to :talk
  validates :title, presence: true
  validates :fname, presence: true
  validates :lname, presence: true
  validates :email, presence: true
  validates :telephone, presence: true
  validates :token, uniqueness: true
  validates :status, presence: true
  before_create :generate_token

  STATUS_NOT_CONFIRMED = 0
  STATUS_CONFIRMED = 1

  private
  def generate_token
    self.token = SecureRandom.urlsafe_base64
  end
end
