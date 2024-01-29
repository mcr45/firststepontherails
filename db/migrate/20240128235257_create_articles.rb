class CreateArticles < ActiveRecord::Migration[7.1]
  def change
    create_table :articles do |t|
      t.references :user, null: false, foreign_key: true
      t.text :title
      t.boolean :updated
      t.text :content

      t.timestamps
    end
  end
end
