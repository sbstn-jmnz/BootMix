# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

##Es el nombre del modelo, no se la tabla ni del controlador. DEL MODELO"

Party.create :name => "De la muerte", :address => "Bartolo Soto 3990, San Miguel, Santiago, Chile"
Party.create :name => "Del Terror", :address => "Tristan Matta 1251, San Miguel, Santiago, Chile"

User.create :name => "admin", :email => "admin@example.com", :password => "password", :role =>"admin"
User.create :name => "Sbstn", :email => "sbstn.jmnz@yahoo.com", :password => "654321", :role =>"admin"

Group.create(name: 'HardRock', deleted_at: DateTime.new(0))
Group.create(name: 'HeavyMetal', deleted_at: DateTime.new(0))
Group.create(name: 'DeathMetal', deleted_at: DateTime.new(0))

GroupUser.create(user_id: '1', group_id: '1', deleted_at: DateTime.new(0))
GroupUser.create(user_id: '2', group_id: '2', deleted_at: DateTime.new(0))
GroupUser.create(user_id: '3', group_id: '3', deleted_at: DateTime.new(0))
