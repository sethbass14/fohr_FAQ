class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :content
      t.string :search_cache
      t.belongs_to :section, foreign_key: true

      t.timestamps
    end
  end
end
