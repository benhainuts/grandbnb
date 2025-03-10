class AddCoordinatesToSeniors < ActiveRecord::Migration[7.1]
  def change
    add_column :seniors, :latitude, :float
    add_column :seniors, :longitude, :float
  end
end
