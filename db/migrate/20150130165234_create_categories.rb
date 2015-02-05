class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :title
      t.string :slug
      t.string :description
      t.string :keywords
      t.string :punktmenu
      t.attachment :image
      t.text :body

      t.timestamps
    end
  end
end
