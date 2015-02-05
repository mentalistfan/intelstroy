class AddToMain < ActiveRecord::Migration
  def change
	add_attachment :mains, :imageattachment
  end
end
