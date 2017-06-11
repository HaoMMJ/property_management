class Layout < ApplicationRecord
  def short_name
    "#{number_of_bedrooms}B #{number_of_wc}W #{number_of_living_rooms}L #{number_of_kitchens}K #{number_of_dinning_rooms}D"
  end
end
