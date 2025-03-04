class AddCityToSeniors < ActiveRecord::Migration[7.1]
  def change
    add_column :seniors, :city, :string
  end
end
