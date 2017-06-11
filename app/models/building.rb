class Building < ApplicationRecord
  belongs_to :building_type
  belongs_to :payment_plan
  has_many :rooms

  scope :active, -> {
    where("buildings.is_deleted = false").order(created_at: :desc)
  }
end
