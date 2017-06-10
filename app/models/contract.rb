class Contract < ApplicationRecord
  scope :visible, -> {
    where("is_deleted = false")
  }
end
