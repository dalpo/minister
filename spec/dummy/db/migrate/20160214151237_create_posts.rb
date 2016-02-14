class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :abstract
      t.text :description
      t.date :published_at
      t.boolean :published, null: false, default: true
      t.references :author, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
