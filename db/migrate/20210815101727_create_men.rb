class CreateMen < ActiveRecord::Migration[6.1]
  def change
    create_table :men do |t|
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
