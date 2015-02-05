class AddCatsInPost < ActiveRecord::Migration
  def change
	add_column :posts, :network_id, :integer
    add_index  :posts, :network_id
  end
end
