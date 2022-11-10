# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# updated
require 'database_cleaner'

puts "Cleaning DataBase..."
DatabaseCleaner.clean_with(:truncation)


puts "Destroying Friends..."
#friend.destroy_all

puts "Populating Users: Admin, Jam"
User.create!([{
	email: "admin@cc2.net",
	password: "w/YCRDlh1OE=w/YCRDlh1OE=w/YCRDlh1OE=",
	first_name: "Admin",
	last_name: "Account"
},
{
	email: "jam@jam.com",
	password: "jamjam",
	first_name: "Jam",
	last_name: "Gee"
}])

puts "Created #{User.count} User(s)"

############

puts "Populating Friends..."
Friend.create!([{
	first_name: "Steam Gunner",
	last_name: "Ovan",
	email: "admin@twilightbrigade.cc2.net",
	phone: "(619) 111-2222",
	twitter: "twilightbrigade",
	created_at: 1,
	updated_at: 1,
	user_id: 1
},
{
	first_name: "Terror of Death",
	last_name: "Haseo",
	email: "terrorofdeath@pkk.cc2.net",
	phone: "(223) 111-2222",
	twitter: "terrorofdeath",
	created_at: 1,
	updated_at: 1,
	user_id: 1
},
{
	first_name: "Harvest Cleric",
	last_name: "Atoli",
	email: "atoli@moontree.cc2.net",
	phone: "(223) 111-2222",
	twitter: "atolimoontree",
	created_at: 1,
	updated_at: 1,
	user_id: 1
}])

puts "Created #{Friend.count} friend(s)"


puts "Done. Don't forget to run your server."