class AddOpponentToMatches < ActiveRecord::Migration
  def change
    add_column :matches, :opponent, :string
  end
end
