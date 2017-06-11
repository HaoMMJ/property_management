class Customer < ApplicationRecord
  scope :active, -> {
    where("customers.is_deleted = false").order(created_at: :desc)
  }

  validates :tel, numericality: true, length: { in: 9..11 }, allow_blank: true
end
