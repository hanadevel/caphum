# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin = {email: 'admin@caphum.com', password: 'demo123'}

a = User.find_by_email(admin[:email])
unless a.present?
  a = User.create(admin)
  a.confirm!
  puts "User '#{a.email}' created."
end