class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.text :address
      t.string :gender
      t.integer :age
      t.string :country
      t.string :state
      t.string :city
      t.boolean :is_disable
      t.string :skills

      t.timestamps null: false
    end
  end
end
