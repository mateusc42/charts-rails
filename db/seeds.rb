# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Order.delete_all
generator = proc do |start_time, end_time, shipping|
  time = Time.at(rand(end_time.to_i - start_time.to_i) + start_time.to_i)
  dollars = rand(200) + 10
  Order.create!(price: dollars, purchased_at: time, shipping: rand(shipping))
end
200.times { generator.call(10.days.ago, Time.zone.now.end_of_day, 1) }
500.times { generator.call(1.month.ago, Time.zone.now.end_of_day, 2) }
Order.create!(price: 10, purchased_at: 1.month.ago.beginning_of_day, shipping: true)

Visit.delete_all
Visit.create  country: 'United States', visited_at: DateTime.now, load_time: 3.5
Visit.create  country: 'United States', visited_at: DateTime.now, load_time: 1.5
Visit.create  country: 'United States', visited_at: DateTime.now, load_time: 1.0
Visit.create  country: 'United States', visited_at: DateTime.now - 1.day, load_time: 4.5
Visit.create  country: 'United States', visited_at: DateTime.now - 1.day, load_time: 4.0
Visit.create  country: 'United States', visited_at: DateTime.now - 2.days, load_time: 3.5
Visit.create  country: 'United States', visited_at: DateTime.now - 2.days, load_time: 1.0
Visit.create  country: 'United States', visited_at: DateTime.now - 2.days, load_time: 3.5
Visit.create  country: 'United States', visited_at: DateTime.now - 3.days, load_time: 4.5
Visit.create  country: 'United States', visited_at: DateTime.now - 3.days, load_time: 3.0
Visit.create  country: 'Germany', visited_at: DateTime.now, load_time: 1.0
Visit.create  country: 'Germany', visited_at: DateTime.now, load_time: 2.0
Visit.create  country: 'Germany', visited_at: DateTime.now, load_time: 1.0
Visit.create  country: 'Germany', visited_at: DateTime.now, load_time: 3.0
Visit.create  country: 'Germany', visited_at: DateTime.now - 1.day, load_time: 4.0
Visit.create  country: 'Germany', visited_at: DateTime.now - 2.days, load_time: 2.0
Visit.create  country: 'Germany', visited_at: DateTime.now - 2.days, load_time: 1.0
Visit.create  country: 'Germany', visited_at: DateTime.now - 2.days, load_time: 3.0
Visit.create  country: 'Germany', visited_at: DateTime.now - 3.days, load_time: 3.5
Visit.create  country: 'South Korea', visited_at: DateTime.now, load_time: 2.0
Visit.create  country: 'South Korea', visited_at: DateTime.now, load_time: 2.5
Visit.create  country: 'South Korea', visited_at: DateTime.now, load_time: 1.0
Visit.create  country: 'South Korea', visited_at: DateTime.now, load_time: 1.5
Visit.create  country: 'South Korea', visited_at: DateTime.now - 1.day, load_time: 2.5
Visit.create  country: 'South Korea', visited_at: DateTime.now - 1.day, load_time: 4.0
Visit.create  country: 'South Korea', visited_at: DateTime.now - 1.day, load_time: 3.0
Visit.create  country: 'South Korea', visited_at: DateTime.now - 2.days, load_time: 1.0
Visit.create  country: 'South Korea', visited_at: DateTime.now - 3.days, load_time: 5.0
Visit.create  country: 'South Korea', visited_at: DateTime.now - 3.days, load_time: 4.0
Visit.create  country: 'South Korea', visited_at: DateTime.now - 3.days, load_time: 5.0
