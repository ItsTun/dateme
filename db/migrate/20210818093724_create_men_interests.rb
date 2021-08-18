class CreateMenInterests < ActiveRecord::Migration[6.1]
  def change
    create_table :interests_men, id: false do |t|
      t.belongs_to :man, index: true
      t.belongs_to :interest, index: true
    end
  end
end
