class AddVideoToStudents < ActiveRecord::Migration
  def change
  	add_column :students, :video, :string
  end
end
