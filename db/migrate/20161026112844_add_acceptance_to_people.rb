class AddAcceptanceToPeople < ActiveRecord::Migration
  def change
  	add_column :people, :terms, :boolean, default: false
  end
end
