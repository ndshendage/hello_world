class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :name
      t.string :location
      t.integer :age
      t.text :description
      t.string :image

      t.timestamps null: false
    end
  end
end
