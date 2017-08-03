class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  validates :category, inclusion: { in: ["chinese","italian", "japanese", "french", "belgian"], allow_nil: false, message: "%{value} is not valid category" }
end
