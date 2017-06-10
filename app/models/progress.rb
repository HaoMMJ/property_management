class Progress < ApplicationRecord
  belongs_to :payment_plan
  belongs_to :payment_period
end
