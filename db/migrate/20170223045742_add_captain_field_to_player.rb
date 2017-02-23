class AddCaptainFieldToPlayer < ActiveRecord::Migration
  def change
    add_column :players, :captain, :boolean, default: false
  end
end
