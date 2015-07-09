# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#user = CreateAdminService.new.call
#puts 'CREATED ADMIN USER: ' << user.email
require 'csv'
CSV.foreach(Rails.root.join("db/seeds_data/facilities.csv"), headers: true) do |row|
  Facility.find_or_create_by(facility_name: row[0], proprieter: row[1], district: row[2], cluster: row[3])
end