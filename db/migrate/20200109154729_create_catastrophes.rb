class CreateCatastrophes < ActiveRecord::Migration[5.2]
  def change
    create_table :catastrophes do |t|
      t.text :image
      t.string :nom
      t.string :type
      t.string :lieu
      t.string :date
      t.float :puissance
      t.int :morts
      t.int :blesses

      t.timestamps
    end
  end
end
