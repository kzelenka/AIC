class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name
      t.text :description
      t.string :key, unique: true

      t.timestamps
    end
  end
end
