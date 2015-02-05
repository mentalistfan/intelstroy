class AddPaperclipToMain2 < ActiveRecord::Migration
  def change
	add_attachment :mains, :imageattachment
  end
end
