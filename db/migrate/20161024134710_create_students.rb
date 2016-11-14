class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :gender
      t.text :address
      t.integer :age
      t.string :resume

      t.timestamps null: false
    end
  end
end
