class Customer < ApplicationRecord
  scope :active, -> {
    where("is_deleted = false")
  }

  validates :tel, numericality: true, length: { in: 9..11 }, allow_blank: true
end
