class AddPosteremailToPost < ActiveRecord::Migration
  def change
    add_column :posts, :posteremail, :string
  end
end
