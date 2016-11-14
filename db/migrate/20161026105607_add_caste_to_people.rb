class AddCasteToPeople < ActiveRecord::Migration
  def change
  	add_column :people, :caste, :string
  end
end
