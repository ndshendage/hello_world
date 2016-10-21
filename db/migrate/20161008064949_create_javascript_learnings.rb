class CreateJavascriptLearnings < ActiveRecord::Migration
  def change
    create_table :javascript_learnings do |t|
      t.string :function_name
      t.text :description

      t.timestamps null: false
    end
  end
end
