class Reservation < ActiveRecord::Base
  belongs_to :talk
  validates :title, presence: true
  validates :fname, presence: true
  validates :lname, presence: true
  validates :email, presence: true
  validates :telephone, presence: true
  validates :token, presence: true, uniqueness: true
  validates :count, presence: true
  validates :status, presence: true

  STATUS_NOT_CONFIRMED = 0
  STATUS_CONFIRMED = 1
end
