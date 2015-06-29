class CreateCosts < ActiveRecord::Migration
  def change
    create_table :costs do |t|
      t.string :item
      t.float :price
      t.string :picture

      t.timestamps null: false
    end
  end
end
