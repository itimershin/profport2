class CreateAuthorBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :author_books do |t|
      t.references :author, foreign_key: true
      t.references :book, foreign_key: true
      t.float :fee

      t.timestamps
    end
    add_index :author_books, [:author_id, :book_id], unique: true,  name: 'author_book_uniq'
  end
end
