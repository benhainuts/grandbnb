class Senior < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo

  validates :name, presence: true
  validates :age, presence: true
  validates :key_skill, presence: true
  validates :address, presence:true
  validates :city, presence:true

end
