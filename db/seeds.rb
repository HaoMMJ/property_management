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

PaymentPlan.create(name: "#{I18n.t('kind')} 1")
PaymentPlan.create(name: "#{I18n.t('kind')} 2")


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
District.create(name: "#{I18n.t('district')} 1", city_id: hcm_id)
District.create(name: "#{I18n.t('district')} 2", city_id: hcm_id)
District.create(name: "#{I18n.t('district')} 3", city_id: hcm_id)
District.create(name: "#{I18n.t('district')} 4", city_id: hcm_id)
District.create(name: "#{I18n.t('district')} 5", city_id: hcm_id)
District.create(name: "#{I18n.t('district')} 6", city_id: hcm_id)
District.create(name: "#{I18n.t('district')} 7", city_id: hcm_id)
District.create(name: "#{I18n.t('district')} 8", city_id: hcm_id)
District.create(name: "#{I18n.t('district')} 9", city_id: hcm_id)
District.create(name: "#{I18n.t('district')} 10", city_id: hcm_id)
District.create(name: "#{I18n.t('district')} 11", city_id: hcm_id)

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

#Create Random data
names = ["Bùi Kim Quyên", "Võ An Phước Thiện", "Phạm Nguyễn QuỳnhTrân", "Dương Hoài Phương", "Phan Vinh Bính", "Võ Minh Thư", "Phan Huỳnh Ngọc Dung", "Nguyễn Vân Anh", "Nguyễn Thế Vinh", "Nguyen Thi Thanh Bích", "Lê Minh Vương", "nguyễn thiện toàn", " Trương Gia Mẫn", "Vương Thu Hiền", "Châu Thị Kim Anh", "Trần NGọc Trang", "huynh minh", "Cao Minh Hiền", "Ta thị thanh tuyen", "Võ Thị Tuyết Vân", "Mai Khánh Vân", "Đoàn Thị Mỹ Xuân", "Doãn Phan Trung Hải", "Lâm Ngọc Linh ", "Nguyễn Minh Châu", "Nguyễn Thạch Giang", "Võ tường duy ", "Trần Thị Kim  Ngân", "Huỳnh Kim Hoàng", "Nguyễn Phước Uyên Thư", "Lê Trung Kiên", "Sity- HaChar", "Kiều Hồng Trang", "Le Thi Hong Khanh", "Phạm Văn Đồng", "Lê Thị Lệ Thủy", "Trương Yến Thanh", "Trần Thị Cẩm Tiên", "Huỳnh Thị Ngọc Thảo", "Đào Duy Toàn", "Nguyễn Thùy Như Quỳnh", "Ngô Phạm Thanh Trúc", "Trần Phan Bảo Thu", "Phạm Ngọc Thảo Vi ", "Phan Vũ Minh Quyền", "Trần Phan Bảo Anh 31-07-1994", "Phạm Hoàng Nam Trung", "Nguyễn Văn Khải", "Trương Hoài Thuận", "Trương Thị Bích Ngọc", "Khưu Minh Trường", "Đỗ Nguyễn Nhất Anh", "Đặng Thị Thủy Tiên", "Dương phạm Thuỳ an", "Hồ Thị Bích Ngọc", "Vũ Ngọc Vân Khanh", "Đặng Như Ngọc", "Bùi Duy Quang", "Nguyễn Huỳnh Thanh Hiền", "Huỳnh Khánh Duy", "Nguyễn Đình Đức", "Lê Nguyễn Kim Ngọc", " Ngô Nguyệt An", "ngo kim dung", "Ngô Cao Sơn", "Lê Thị Thùy Liên", "Trần Châu Bảo Ngọc", "Nguyễn Mai Lê", "Võ Việt Hản", "Lục Kim Ngọc", "Ngô Hồng Nhung", "Lê Hồng Phúc", "Lu Kim Hoà", "Huỳnh Phạm Ngọc Thảo", "Cai Huỳnh Trúc Vy ", "Phan Hữu Sơn CA", "Nhâm Bá Duy ", "Nguyen Minh Thuy", "Nguyễn Hữu Bảo Thơ", "Đinh Thị Hồng Vân", "Đinh Thị Hoa", "Nguyễn Tấn Thành", "Lương Hòa Nhân ", "Nguyễn Thuỳ Linh", "Nguyễn Thị Huyền Trâm", "Lê Thị Ngọc Hoa", "lê thị diễm hương", "Vũ Thị Hoàng Quyên", "Lê Minh Huy", "Bùi Thị Ngọc Điệp", "Trần Doanh ", "Nguyễn Trang Oanh", "Lê Hồ Minh Trâm", "Trần Khải Huy", "Lê Thùy Trúc Ly", "Lê Hàn Uyên", "Nguyễn Lê Hoàng Phương", "Nguyễn Thị Thúy An", "Lê Hạ Lam", "Ngô Thanh Hà"]

1.upto(100) do |i|
  district = District.offset(rand(District.count)).first
  birthday = Date.today - rand(20..60).years - rand(1..365).days
  Customer.create(
    name: names[i-1],
    birthday: birthday,
    birth_place: "#{district.name} #{district.city.name}",
    id_card: "0"+rand(100000000..1000000000).to_s,
    issued_by: "CA TP #{district.city.name}",
    issued_on: birthday + 18.years + rand(1..365).days,
    tel: "0"+rand(100000000..1000000000).to_s,
    occupation: ["cong chuc nha nuoc", "nhan vien van phong", "kinh doanh", "lao dong tu do"].sample,
    email: "email_#{i}@email.com"
  )
end


statuses = ["#{I18n.t('done')}", "#{I18n.t('in_construction')}"]
room_states = ["available", "applied" ,"sold"]
room_index = 1

#Create Random data
0.upto(20) do |i|
  district = District.offset(rand(District.count)).first
  built_on = Date.today - rand(100..1000).days
  group = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
  building_status = statuses[rand(0..1)]
  payment_plan_id = (building_status == "#{I18n.t('in_construction')}") ? PaymentPlan.first.id : PaymentPlan.last.id
  building_type = BuildingType.offset(i%2).first
  is_villa = building_type.name == "#{I18n.t('villa')}"
  num_floors = is_villa ? rand(2..5) : rand(10..30)

  building = Building.create(
    name: "#{group[i]}",
    building_type_id: building_type.id,
    district_id: district.id,
    address: "#{rand(1..100)} #{group[i]} #{district.name} #{district.city.name}",
    built_on: built_on,
    building_status: building_status,
    payment_plan_id: payment_plan_id,
    num_floors: num_floors
  )

  open_at = Time.zone.now - rand(10..365).days
  if is_villa
    space = rand(150..500)
    price = space * rand(20..35)
    
    Room.create(
      building_id: building.id,
      room_no: room_index,
      room_status: building_status,
      state: room_states[rand(0..2)],
      lighting_direction_id: LightingDirection.offset(rand(LightingDirection.count)).first.id,
      layout_id: Layout.last.id,
      floor: 1,
      space: space,
      available_on: open_at + rand(-5..5).days,
      opened_at: open_at,
      price: "#{price}000000",
      price_change_at: open_at
    )
    room_index += 1
  else
    num_rooms = rand(3..6) * num_floors
    in_construction = building_status == "#{I18n.t('in_construction')}"
    percent_complete = (rand(0.0..1.0) * num_rooms).to_i
    price_per_square_metters = rand(20..35)
    
    1.upto(num_rooms) do |j|
      room_status = (j < percent_complete) ? "#{I18n.t('done')}" : "#{I18n.t('in_construction')}"
      state = in_construction ? ["available", "applied"].sample : room_states.sample
      space = rand(45..130)
      Room.create(
        building_id: building.id,
        room_no: room_index,
        room_status: room_status,
        state: state,
        lighting_direction_id: LightingDirection.offset(rand(LightingDirection.count)).first.id,
        layout_id: Layout.offset(rand(Layout.count)).first.id,
        floor: (j/(num_rooms/num_floors)),
        space: space,
        available_on: open_at + rand(-5..5).days,
        opened_at: open_at, 
        price: "#{price_per_square_metters * space}000000",
        price_change_at: open_at
      )
      room_index += 1
    end
  end
end

