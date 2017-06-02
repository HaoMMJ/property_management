# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#For MASTER table
BuildingType.create(name: "#{I18n.t('villa')}")
BuildingType.create(name: "#{I18n.t('apartment')}")

City.create(name: "#{I18n.t('hanoi')}")
hanoi_id = City.last.id
District.create(name: "#{I18n.t('hoankiem')}", city_id: hanoi_id)
District.create(name: "#{I18n.t('badinh')}", city_id: hanoi_id)
District.create(name: "#{I18n.t('dongda')}", city_id: hanoi_id)
District.create(name: "#{I18n.t('haibatrung')}", city_id: hanoi_id)
District.create(name: "#{I18n.t('thanhxuan')}", city_id: hanoi_id)
District.create(name: "#{I18n.t('tayho')}", city_id: hanoi_id)
District.create(name: "#{I18n.t('caugiay')}", city_id: hanoi_id)
District.create(name: "#{I18n.t('hoangmai')}", city_id: hanoi_id)
District.create(name: "#{I18n.t('longbien')}", city_id: hanoi_id)
District.create(name: "#{I18n.t('donganh')}", city_id: hanoi_id)
District.create(name: "#{I18n.t('gialam')}", city_id: hanoi_id)
District.create(name: "#{I18n.t('socson')}", city_id: hanoi_id)
District.create(name: "#{I18n.t('thanhtri')}", city_id: hanoi_id)


City.create(name: "#{I18n.t('hcm')}")
hcm_id = City.last.id
District.create(name: "#{I18n.t('district')} 1", city_id: hanoi_id)
District.create(name: "#{I18n.t('district')} 2", city_id: hanoi_id)
District.create(name: "#{I18n.t('district')} 3", city_id: hanoi_id)
District.create(name: "#{I18n.t('district')} 4", city_id: hanoi_id)
District.create(name: "#{I18n.t('district')} 5", city_id: hanoi_id)
District.create(name: "#{I18n.t('district')} 6", city_id: hanoi_id)
District.create(name: "#{I18n.t('district')} 7", city_id: hanoi_id)
District.create(name: "#{I18n.t('district')} 8", city_id: hanoi_id)
District.create(name: "#{I18n.t('district')} 9", city_id: hanoi_id)
District.create(name: "#{I18n.t('district')} 10", city_id: hanoi_id)
District.create(name: "#{I18n.t('district')} 11", city_id: hanoi_id)

LightingDirection.create(name: "#{I18n.t('east')}")
LightingDirection.create(name: "#{I18n.t('west')}")
LightingDirection.create(name: "#{I18n.t('south')}")
LightingDirection.create(name: "#{I18n.t('north')}")
LightingDirection.create(name: "#{I18n.t('south_west')}")
LightingDirection.create(name: "#{I18n.t('north_west')}")
LightingDirection.create(name: "#{I18n.t('south_east')}")
LightingDirection.create(name: "#{I18n.t('north_east')}")

Layout.create(number_of_bedrooms: 1, number_of_wc: 1, number_of_living_rooms: 1, number_of_kitchens: 1, number_of_dinning_rooms: 1)
Layout.create(number_of_bedrooms: 1, number_of_wc: 1, number_of_living_rooms: 0, number_of_kitchens: 0, number_of_dinning_rooms: 0)
Layout.create(number_of_bedrooms: 2, number_of_wc: 1, number_of_living_rooms: 1, number_of_kitchens: 1, number_of_dinning_rooms: 1)
Layout.create(number_of_bedrooms: 3, number_of_wc: 2, number_of_living_rooms: 1, number_of_kitchens: 1, number_of_dinning_rooms: 1)


Equipment.create(name: "#{I18n.t('sanitary_equipment')}", brand_name: "Totto")
Equipment.create(name: "#{I18n.t('ceiling_cassette')}", brand_name: "Panasonic")
Equipment.create(name: "#{I18n.t('air_conditioner')}", brand_name: "Panasonic")
Equipment.create(name: "#{I18n.t('wood_flooring')}", brand_name: "")
Equipment.create(name: "#{I18n.t('cooking_equipment')}", brand_name: "")
Equipment.create(name: "#{I18n.t('chandeliers')}", brand_name: "")

user = User.new
user.email = 'admin@email.com'
user.password = '123456'
user.password_confirmation = '123456'
user.save
