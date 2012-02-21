class AddPlayerToCharacter < ActiveRecord::Migration
  def change
    add_column :characters, :player, :string
  end
end
