class Customer < ApplicationRecord
  validates :tel, numericality: true, length: { in: 9..11 }, allow_blank: true
end
