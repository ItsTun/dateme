class CreateTableGender < ActiveRecord::Migration[6.1]
  def change
    create_table :genders do |t|
      t.string :title
      t.timestamps
    end
  end
end