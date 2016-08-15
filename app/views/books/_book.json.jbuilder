json.extract! book, :id, :book_title, :author, :genre, :reading_level, :number_of_pages, :copyrighted, :publisher, :summary, :created_at, :updated_at
json.url book_url(book, format: :json)