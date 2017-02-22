class CreateSignups < ActiveRecord::Migration
  def change
    create_table :signups do |t|
      t.integer :player_id
      t.integer :practice_id
      t.integer :match_id
      t.boolean :cancelled, default: false
      t.timestamps
    end
  end
end
