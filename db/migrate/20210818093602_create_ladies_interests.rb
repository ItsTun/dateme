class CreateLadiesInterests < ActiveRecord::Migration[6.1]
  def change
    create_table :interests_ladies, id: false do |t|
      t.belongs_to :lady, index: true
      t.belongs_to :interest, index: true
    end
  end
end
