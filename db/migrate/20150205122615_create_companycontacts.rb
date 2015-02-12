class CreateCompanycontacts < ActiveRecord::Migration
  def change
    create_table :companycontacts do |t|
      t.string :title
      t.string :slug
      t.string :punktmenu
      t.string :description
      t.string :keywords
      t.attachment :image
      t.text :body

      t.timestamps
    end
  end
end
