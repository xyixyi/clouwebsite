# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user1 = User.new
user1.email = 'raoyiran@hotmail.com'
user1.password = 'aia20022'
user1.password_confirmation = 'aia20022'
user1.role = 'developer'
user1.authorized = true
user1.save!

user3 = User.new
user3.email = 'root@szclou.com'
user3.password = 'rootszclou'
user3.password_confirmation = 'rootszclou'
user3.role = 'developer'
user3.authorized = true
user3.save!

