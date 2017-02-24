# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

YAML.load(ENV["PLAYERS_ON_ROSTER"]).each do |player|
    new_player = Player.create!(first_name: player[0].split.first,
                                last_name: player[0].split.last,
                                email: player[1],
                                password: ENV["PASSWORD"])
    if new_player.first_name == "Chi-Ying" || new_player.last_name == "Xu"
      new_player.captain = true
      new_player.save!
    end
end

# password = ENV["PASSWORD"]
#
# players_on_roster.each do |player|
#   first_name = player[0].split.first
#   last_name = player[0].split.last
#   email = player[1]
#   Player.create!(first_name: first_name, last_name: last_name, email: email, password: password)
# end
