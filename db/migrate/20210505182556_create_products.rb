class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.integer :score
      t.string :photoURL

      t.timestamps
    end
  end
end
