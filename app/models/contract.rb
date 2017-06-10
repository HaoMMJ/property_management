class Contract < ApplicationRecord
  belongs_to :room
  belongs_to :customer
  belongs_to :progress


  scope :visible, -> {
    where("is_deleted = false")
  }

  scope :by_building_address, -> {
    where("is_deleted = false")
  }
  scope :by_building_name, -> {
    where("is_deleted = false")
  }
  scope :by_room_no, -> {
    where("is_deleted = false")
  }
  scope :by_customer_name, -> {
    where("is_deleted = false")
  }

  def self.ransackable_scopes(auth_object = nil)
    [:by_building_address, :by_building_name, :by_room_no, :by_customer_name]
  end
end
