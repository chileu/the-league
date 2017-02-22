class CreatePractices < ActiveRecord::Migration
  def change
    create_table :practices do |t|
      t.date :date
      t.time :time
      t.boolean :cancelled, default: false
      t.timestamps
    end
  end
end
