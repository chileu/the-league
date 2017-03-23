class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.date :date
      t.time :time
      t.string :place
      t.string :home_or_away
      t.boolean :cancelled, default: false
      t.timestamps
    end
  end
end
