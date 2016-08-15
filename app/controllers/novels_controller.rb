class NovelsController < ApplicationController
  def index
  	@books = Book.all
  end
end
