# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

##Es el nombre del modelo, no se la tabla ni del controlador. DEL MODELO"
User.create!(name:'Rocco', deleted_at: DateTime.new(0))
User.create!(name:'Jenna', deleted_at: DateTime.new(0))
User.create!(name:'Anna', deleted_at: DateTime.new(0))

Group.create(name: 'HardRock', deleted_at: DateTime.new(0))
Group.create(name: 'HeavyMetal', deleted_at: DateTime.new(0))
Group.create(name: 'DeathMetal', deleted_at: DateTime.new(0))

GroupUser.create(user_id: '1', group_id: '1', deleted_at: DateTime.new(0))
GroupUser.create(user_id: '2', group_id: '2', deleted_at: DateTime.new(0))
GroupUser.create(user_id: '3', group_id: '3', deleted_at: DateTime.new(0))
