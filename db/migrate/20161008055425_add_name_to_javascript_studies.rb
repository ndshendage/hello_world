class AddNameToJavascriptStudies < ActiveRecord::Migration
  def change
    add_column :javascript_studies, :function_name, :string
    add_column :javascript_studies, :description, :text
  end
end
