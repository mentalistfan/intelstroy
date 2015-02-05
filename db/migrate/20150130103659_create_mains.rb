class CreateMains < ActiveRecord::Migration
  def change
    create_table :mains do |t|
      t.string :title
      t.string :slug
      t.string :menupunkt
      t.string :imageattachment
      t.text :body
      t.string :description
      t.string :keywords

      t.timestamps
    end
  end
end
