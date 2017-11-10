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

# 中間テーブルから消す
ItemContact.delete_all

# 親テーブルから消す
Item.delete_all

Color.delete_all
Color.create(name: 'ブラック')
Color.create(name: 'ブルー')
Color.create(name: 'レッド')

Contact.delete_all
Contact.create(name: 'WAN×1')
Contact.create(name: 'LAN×8')
Contact.create(name: 'USB-C×3')

Item.create(series: '高速Wi-Fiシリーズ', type_number: 'RT-DB1000X', item_name: '高性能デュアルバンドWi-Fiギガビットルーター', tax_excluded: 27000, tax_included: 29160,
            special: "- IEEE802.11ac/n/a/g/b対応\n- 5GHzと2.4GHzのデュアルバンド対応\n- NitroQAM技術への対応で最大2,167Mbpsの高速接続が可能\n- 同時に複数の機器と通信できるMU-MIMO技術に対応",
            color_id: Color.all.first.id + 0)
Item.create(series: '高速Wi-Fiシリーズ', type_number: 'RT-DB1000X', item_name: '高性能デュアルバンドWi-Fiメガビットルーター', tax_excluded: 25000, tax_included: 27000, special: '備考B', color_id: Color.all.first.id + 1)
Item.create(series: '高速Wi-Fiシリーズ', type_number: 'RT-DB1200X', item_name: '高性能デュアルバンドWi-Fiテラビットルーター', tax_excluded: 20000, tax_included: 21600, special: '備考C', color_id: Color.all.first.id + 2)
