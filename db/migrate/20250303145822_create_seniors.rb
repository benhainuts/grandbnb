class CreateSeniors < ActiveRecord::Migration[7.1]
  def change
    create_table :seniors do |t|
      t.string :name
      t.integer :age
      t.string :address
      t.string :key_skill
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
