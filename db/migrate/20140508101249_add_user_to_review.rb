class AddUserToReview < ActiveRecord::Migration
  def change
  	# add_column :[table], :[name], :[type]
  	add_column :reviews, :user_id, :integer
  end
end
