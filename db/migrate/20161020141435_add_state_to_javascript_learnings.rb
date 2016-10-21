class AddStateToJavascriptLearnings < ActiveRecord::Migration
  def change
  	add_column :javascript_learnings, :state, :string
  end
end
