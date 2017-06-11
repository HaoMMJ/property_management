class Room < ApplicationRecord
  belongs_to :building
  belongs_to :lighting_direction
  belongs_to :layout

  scope :active, -> {
    where("rooms.is_deleted = false").order(created_at: :desc)
  }

  scope :available, -> {
    where(state: I18n.t('available'))
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
    [:from_space, :to_space, :from_price, :to_price]
  end
end
