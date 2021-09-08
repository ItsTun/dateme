class CreatePersonalsInterests < ActiveRecord::Migration[6.1]
  def change
    create_table :interests_personals, id: false do |t|
      t.belongs_to :personal, index: true
      t.belongs_to :interest, index: true
    end
  end
end
