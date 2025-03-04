class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :senior

  validates :datetime, presence: true
end
