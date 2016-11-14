class AddMImagesToAnimals < ActiveRecord::Migration
  def change
  	add_column :animals, :photos, :string 
  end
end
