# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Store.create!(store_name: "Three Stars Resale Shop", description: "Reseller with vintage home furnishings", address: "2600 W Fullerton Ave, Chicago, IL")
Store.create!(store_name: "Cynthia's Consignments", description: "Discount resale shop for designer gear", address: "2218 N Clybourn Ave, Chicago, IL")
Store.create!(store_name: "eDrop-Off Luxury Consignment", description: "Local & online dealer for designer gear", address: "2117 N Halsted St, Chicago, IL")


#make 3 original roasts? add then add random for the different locations to simulate regions


type_item = ["work", "weekend", "datenight", "casual"]

10.times do
 StyleItem.create!(item_type: type_item.sample , description:  Faker::Hipster.sentence , store_id: rand(1..3) )


end
