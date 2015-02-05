class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :title
      t.string :slug
      t.string :menupunkt
      t.string :description
      t.string :keywords
      t.attachment :image
      t.text :body

      t.timestamps
    end
  end
end
