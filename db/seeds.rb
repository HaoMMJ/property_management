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

plan_1 = PaymentPlan.create(name: "#{I18n.t('kind')} 1")
plan_2 = PaymentPlan.create(name: "#{I18n.t('kind')} 2")

pp_1 = PaymentPeriod.create(name: "#{I18n.t('contract_registered')}")
pp_2 = PaymentPeriod.create(name: "#{I18n.t('after_days', days: 30)}")
pp_3 = PaymentPeriod.create(name: "#{I18n.t('after_days', days: 60)}")
pp_4 = PaymentPeriod.create(name: "#{I18n.t('delivery')}")
pp_5 = PaymentPeriod.create(name: "#{I18n.t('issue_certificate')}")
pp_6 = PaymentPeriod.create(name: "#{I18n.t('build_the_roof')}")
pp_7 = PaymentPeriod.create(name: "#{I18n.t('done')}")

Progress.create(step: 1, payment_period_id: pp_1.id, note: "#{I18n.t('payment_times')} 1", payment_amount: 0.3, payment_plan_id: plan_1.id)
Progress.create(step: 2, payment_period_id: pp_2.id, note: "#{I18n.t('payment_times')} 2", payment_amount: 0.3, payment_plan_id: plan_1.id)
Progress.create(step: 3, payment_period_id: pp_3.id, note: "#{I18n.t('payment_times')} 3", payment_amount: 0.1, payment_plan_id: plan_1.id)
Progress.create(step: 4, payment_period_id: pp_4.id, note: "#{I18n.t('payment_times')} 4", payment_amount: 0.25, payment_plan_id: plan_1.id)
Progress.create(step: 5, payment_period_id: pp_5.id, note: "#{I18n.t('payment_times')} 5", payment_amount: 0.05, payment_plan_id: plan_1.id)
Progress.create(step: 6, payment_period_id: pp_7.id, note: "", payment_amount: 0, payment_plan_id: plan_1.id)

Progress.create(step: 1, payment_period_id: pp_1.id, note: "#{I18n.t('payment_times')} 1", payment_amount: 0.3, payment_plan_id: plan_2.id)
Progress.create(step: 2, payment_period_id: pp_2.id, note: "#{I18n.t('payment_times')} 2", payment_amount: 0.3, payment_plan_id: plan_2.id)
Progress.create(step: 3, payment_period_id: pp_6.id, note: "#{I18n.t('payment_times')} 3", payment_amount: 0.1, payment_plan_id: plan_2.id)
Progress.create(step: 4, payment_period_id: pp_4.id, note: "#{I18n.t('payment_times')} 4", payment_amount: 0.25, payment_plan_id: plan_2.id)
Progress.create(step: 5, payment_period_id: pp_5.id, note: "#{I18n.t('payment_times')} 5", payment_amount: 0.05, payment_plan_id: plan_2.id)
Progress.create(step: 6, payment_period_id: pp_7.id, note: "", payment_amount: 0, payment_plan_id: plan_2.id)


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
statuses = ["#{I18n.t('done')}", "#{I18n.t('in_construction')}"]
room_states = ["#{I18n.t('available')}", "#{I18n.t('applied')}" ,"#{I18n.t('sold')}"]
room_index = 1

#Create Random data
1.upto(21) do |i|
  district = District.offset(rand(District.count)).first
  built_on = Date.today - rand(120..1000).days
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
      state = in_construction ? ["#{I18n.t('available')}", "#{I18n.t('applied')}"].sample : room_states.sample
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

first_names = ["Anh", "An", "Bình", "Hà", "Khánh", "Linh", "Lương", "Tâm", "Thanh", "Tú", "Cường", "Hùng", "Tráng", "Dũng", "Thông", "Minh", "Trí", "Tuệ", "Quang", "Sáng", "Nhân", "Trung", "Tín", "Lễ", "Nghĩa", "Công", "Hiệp", "Phúc", "Phú", "Quý", "Kim", "Tài", "Danh", "Đạt", "Sơn", "Giang", "Lâm", "Hải", "Dương", "Mai", "Lan", "Cúc", "Hoa", "Hương", "Yến", "Oanh", "Bích", 'Ngọc', "Trân", "Hạnh", "Thảo", "Hiền", "Dung", "Vân", "Thúy", "Diễm", "Lệ", "Nguyệt", "Nga", "Trang", "Huyền", "Ngân"]
middle_names = ["Xuân", "Thu", "Cẩm", "Châu", "Hồng", "Hoàng", "Đức", "Hạnh", "Đình", "Đại", "Thị", "Diệu", "Văn", "Bá", "Mạnh", "Hữu", " Bảo", "Tường", "Thục", "Nhã", "Diệp", "Phương", "Kim", "Ngọc", "Cát", "Kiều", "Công", "Đình", "Duy", "Hải"]
last_names = ["Nguyễn", "Trần", "Lê", "Phạm", "Hoàng", "Huỳnh", "Phan", "Vũ", "Võ", "Đặng", "Bùi", "Đỗ", "Hồ", "Ngô", "Dương", "Lý"]

contracted_rooms = Room.where(state: ["#{I18n.t('applied')}" ,"#{I18n.t('sold')}"])
index = 1
contracted_rooms.each do |r|
  district = District.offset(rand(District.count)).first
  birthday = Date.today - rand(20..60).years - rand(1..365).days
  last_name = last_names.sample
  middle_name = (middle_names - [last_names]).sample
  first_name = (first_names - [last_name, middle_name]).sample
  customer = Customer.create(
    name: "#{last_name} #{middle_name} #{first_name}",
    birthday: birthday,
    birth_place: "#{district.name} #{district.city.name}",
    address: "#{rand(10..1000)} #{district.name} #{district.city.name}",
    id_card: "0"+rand(100000000..1000000000).to_s,
    issued_by: "CA TP #{district.city.name}",
    issued_on: birthday + 18.years + rand(1..365).days,
    tel: "0"+rand(100000000..1000000000).to_s,
    occupation: ["cong chuc nha nuoc", "nhan vien van phong", "kinh doanh", "lao dong tu do"].sample,
    email: "email_#{index}@email.com"
  )
  index += 1

  applied_on = rand(r.opened_at..(Date.today - 10))
  payment_plan = r.building.payment_plan

  if r.state == "#{I18n.t('applied')}"
    step = ((Date.today - applied_on).to_f / 30).ceil
    step = (step > 6) ? 6 : step.to_i
  else
    step = 6
  end 
  progress = payment_plan.progresses.where(step: step).first
  if progress.nil?
    puts step
    puts applied_on
    puts (Date.today - applied_on).to_f
  end
  Contract.create(
    room_id: r.id, 
    customer_id: customer.id, 
    progress_id: progress.id, 
    applied_on: applied_on
  )
end

