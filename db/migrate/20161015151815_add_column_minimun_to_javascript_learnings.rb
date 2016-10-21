class AddColumnMinimunToJavascriptLearnings < ActiveRecord::Migration
  def change
  	add_column :javascript_learnings, :minimum, :integer
  	add_column :javascript_learnings, :maximum, :integer
  end
end
