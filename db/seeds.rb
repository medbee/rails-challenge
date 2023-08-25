# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

organization1 = User.create!(name: 'Organization 1', email: 'organization1@example.org', password: 'password', type: 'organization')
organization2 = User.create!(name: 'Organization 1', email: 'organization2@example.org', password: 'password', type: 'organization')
doctor1 = User.create!(name: 'Doctor', email: 'doctor1@example.org', password: 'password', type: 'doctor')
doctor2 = User.create!(name: 'Doctor', email: 'doctor1@example.org', password: 'password', type: 'doctor')
doctor3 = User.create!(name: 'Doctor', email: 'doctor1@example.org', password: 'password', type: 'doctor')

UserContact.create!(requesting_user: organization1, requested_user: doctor1, status: 'accepted')
UserContact.create!(requesting_user: doctor2, requested_user: organization1, status: 'accepted')
UserContact.create!(requesting_user: organization1, requested_user: doctor3, status: nil)
UserContact.create!(requesting_user: doctor1, requested_user: organization2, status: nil)
UserContact.create!(requesting_user: organization2, requested_user: doctor2, status: 'accepted')
UserContact.create!(requesting_user: doctor3, requested_user: organization2, status: 'rejected')

# TODO: Fix problem with seeds
