# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

players_on_roster = [
  ["Andrew Giuliani"],
  ["Dale Vallaincourt"]
]

players_on_roster.each do |player|
  first_name = player[0].split.first
  last_name = player[0].split.last
  Player.create(first_name: last_name, last_name: last_name)
end
