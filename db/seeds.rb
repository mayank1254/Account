# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


[{name: 'customer'}, {name: 'branch_manager'}].each do |role|
  Role.find_or_create_by(role)
end

role_manager = Role.find_by(name: 'branch_manager')

manager1 = User.create(user_name: "Manager1", email: "manager1@mailinator.com",  password: "password", password_confirmation: "password", birth_date: "12/07/1993", gender: "Male", phone: "123456789")

manager2 = User.create(user_name: "Manager2", email: "manager2@mailinator.com",  password: "password", password_confirmation: "password", birth_date: "12/07/1993", gender: "Male", phone: "123456789")


UserRole.create(role_id: role_manager.id, user_id: manager1.id)
UserRole.create(role_id: role_manager.id, user_id: manager2.id)