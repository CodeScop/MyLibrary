class NovelsController < ApplicationController
before_action :novel_length, only: [:index]
  def index
  	@books = Book.all
  end

  def novel_length
  	@books = Book.all
    @novel_length_books = []

    @books.each do |book|
         if book.number_of_pages.to_i >= 240
             @novel_length_books.push(book)
         end
     end
  end
end
