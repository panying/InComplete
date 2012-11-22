class AddNameToPost < ActiveRecord::Migration
  def change
	remove_column:posts, :name
    add_column :posts, :name, :string
  end
end
