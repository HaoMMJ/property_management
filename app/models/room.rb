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
end
