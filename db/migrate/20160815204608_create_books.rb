class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :book_title
      t.string :author
      t.string :genre
      t.decimal :reading_level
      t.integer :number_of_pages
      t.integer :copyrighted
      t.string :publisher
      t.text :summary

      t.timestamps null: false
    end
  end
end
