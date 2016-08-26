# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.new
user.email = 'test@example.com'
user.password = 'hangpeng123'
user.password_confirmation = 'hangpeng123'
user.role = 'developer'
user.save!

user2 = User.new
user2.email = 'test2@example.com'
user2.password = 'hangpeng123'
user2.password_confirmation = 'hangpeng123'
user2.role = "admin"
user2.save!