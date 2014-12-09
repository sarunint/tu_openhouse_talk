class Talk < ActiveRecord::Base
  has_many :reservations
  validates :name, presence: true
  validates :description, presence: true
  validates :max_reservations, presence: true
  validates :start_at, presence: true
  validates :end_at, presence: true
end
