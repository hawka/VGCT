class AddCharPicToCharacters < ActiveRecord::Migration
  def change
    add_column :characters, :charpic, :string

  end
end
