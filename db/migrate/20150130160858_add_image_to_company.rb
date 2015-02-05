class AddImageToCompany < ActiveRecord::Migration
  def change
	add_attachment :companies, :imageattachment
  end
end
