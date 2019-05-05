class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      # var t refers to the table that was created
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
