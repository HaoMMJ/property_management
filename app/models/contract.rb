class Contract < ApplicationRecord
  belongs_to :room
  belongs_to :customer
  belongs_to :progress


  scope :visible, -> {
    joins(room: :building).
    joins(:customer).
    where("contracts.is_deleted = false")
  }

  scope :by_building_address, ->(address) {
    where("buildings.address like ?", "%#{address}%")
  }
  scope :by_building_name, -> (name){
    joins(room: :building).
    where("buildings.name like ?", "%#{name}%")
  }
  scope :by_room_no, ->(room_no) {
    where("rooms.room_no like ?", "%#{room_no}%")
  }
  scope :by_customer_name, -> (name){
    where("customers.name like ?", "%#{name}%")
  }

  def self.ransackable_scopes(auth_object = nil)
    [:by_building_address, :by_building_name, :by_room_no, :by_customer_name]
  end
end
