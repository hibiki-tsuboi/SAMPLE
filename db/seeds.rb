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

Item.delete_all

Color.delete_all
Color.create(name: 'Red')
Color.create(name: 'Blue')
Color.create(name: 'Yellow')

Contact.delete_all
Contact.create(name: 'USB-C')
Contact.create(name: 'HDMI')
Contact.create(name: 'Mini DisplayPort')

Item.create(series: 'xxx', type_number: 'A001', item_name: '○○商品', tax_excluded: 1000, tax_included: 1080, special: '備考A', color_id: Color.all.first.id + 0, contact_id: Contact.all.first.id + 0)
Item.create(series: 'xxx', type_number: 'B001', item_name: '××商品', tax_excluded: 2000, tax_included: 2160, special: '備考B', color_id: Color.all.first.id + 1, contact_id: Contact.all.first.id + 1)
Item.create(series: 'yyy', type_number: 'B001', item_name: '△△商品', tax_excluded: 3000, tax_included: 3240, special: '備考C', color_id: Color.all.first.id + 2, contact_id: Contact.all.first.id + 2)
