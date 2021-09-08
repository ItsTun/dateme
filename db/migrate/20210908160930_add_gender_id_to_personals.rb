class AddGenderIdToPersonals < ActiveRecord::Migration[6.1]
  def change
    add_column :personals, :gender_id, :integer
  end
end
