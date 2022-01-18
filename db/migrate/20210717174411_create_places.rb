class CreatePlaces < ActiveRecord::Migration[6.1]
  def change
    create_table :places do |t|
      t.string :name
      t.integer :zip_code

      t.timestamps
    end
  end
end
