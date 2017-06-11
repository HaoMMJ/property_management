class Room < ApplicationRecord
  belongs_to :building
  belongs_to :lighting_direction
  belongs_to :layout

  scope :active, -> {
    joins(:building).
    where("rooms.is_deleted = false").order(created_at: :desc)
  }

  scope :available, -> {
    where(state: I18n.t('available'))
  }

  scope :by_building_address, ->(address) {
    where("buildings.address like ?", "%#{address}%")
  }

  scope :by_building_name, -> (name){
    where("buildings.name like ?", "%#{name}%")
  }

  scope :by_building_type_id, -> (type_id) {
    where("buildings.building_type_id = ?", type_id)
  }

  scope :by_customer_name, -> (name){
    where("customers.name like ?", "%#{name}%")
  }
  scope :from_space, -> (space){
    where("rooms.space >= ?", space)
  }

  scope :to_space, -> (space){
    where("rooms.space <= ?", space)
  }
  scope :from_price, -> (price){
    where("cast(rooms.price as signed) >= ?", price)
  }

  scope :to_price, -> (price){
    where("cast(rooms.price as signed) <= ?", price)
  }

  def self.ransackable_scopes(auth_object = nil)
    [:by_building_address, :by_building_name, :by_building_type_id, :from_space, :to_space, :from_price, :to_price]
  end
end
