# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.delete_all
Record.delete_all

User.create(:email => "lytienphuc0810@gmail.com", :password => "123123", :password_confirmation => "123456", :remember_me => true)
Record.create(:item => "abc", :price => 123, :profit => 456, :date => Date.today)
Record.create(:item => "abc", :price => 123, :profit => 456, :date => Date.today - 1)
Record.create(:item => "abc", :price => 123, :profit => 456, :date => Date.today - 2)
Record.create(:item => "abc", :price => 123, :profit => 456, :date => Date.today - 3)
