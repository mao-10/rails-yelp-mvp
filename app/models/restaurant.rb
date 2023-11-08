class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  CATEGORY = %W[chinese italian japanese french belgian]
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORY }
end
