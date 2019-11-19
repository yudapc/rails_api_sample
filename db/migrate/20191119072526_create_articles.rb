class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.integer :category_id
      t.text :content_body
      t.boolean :published, default: true

      t.timestamps
    end
  end
end
