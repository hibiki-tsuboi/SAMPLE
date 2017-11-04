# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Staff.delete_all
staff = Staff.new(email: 'admin@admin.jp', password: 'admin00')
staff.skip_confirmation!
staff.save!

Color.delete_all
Color.create(name: 'Red')
Color.create(name: 'Blue')
Color.create(name: 'Yellow')
