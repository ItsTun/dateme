class ChangeLadiesToPersonal < ActiveRecord::Migration[6.1]
  def change
    rename_table :ladies, :personals
    
  end
end
