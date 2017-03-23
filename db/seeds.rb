# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

YAML.load(ENV["PLAYERS_ON_ROSTER"]).each do |player|
    if Player.find_by(email: player[1]) == nil
      new_player = Player.create!(email: player[1],
                                  first_name: player[0].split.first,
                                  last_name: player[0].split.last,
                                  password: ENV["PASSWORD"])
      if new_player.first_name == "Chi-Ying"
        new_player.captain = true
        new_player.save!
      end
    end
end
