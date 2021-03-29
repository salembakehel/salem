# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do |y|
  User.create(
    full_name: "mohammed ali #{y + 1}",
    email: "ma2@gmail.com",
    phone_number: 99000 + y + 1,
    check_in: "202#{y}-2-1#{y}",
    check_out: "2020-2-1#{y}"
  )
end
