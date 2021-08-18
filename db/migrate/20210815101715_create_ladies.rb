class CreateLadies < ActiveRecord::Migration[6.1]
  def change
    create_table :ladies do |t|
      t.string :name
      t.integer :age
      t.string :height
      t.integer :two_hr_price
      t.integer :three_hr_price
      t.integer :user_id
      t.string :ph_no
      t.integer :price
      t.text :description
      t.timestamps
    end
  end
end
