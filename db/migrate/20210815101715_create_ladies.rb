class CreateLadies < ActiveRecord::Migration[6.1]
  def change
    create_table :ladies do |t|
      t.string :name
      t.integer :age
      t.string :height
      t.integer :duration
      t.string :ph_no
      t.integer :price
      t.text :description
      t.timestamps
    end
  end
end
