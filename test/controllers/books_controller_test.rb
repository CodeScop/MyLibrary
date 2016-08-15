require 'test_helper'

class BooksControllerTest < ActionController::TestCase
  setup do
    @book = books(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:books)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create book" do
    assert_difference('Book.count') do
      post :create, book: { author: @book.author, book_title: @book.book_title, copyrighted: @book.copyrighted, genre: @book.genre, number_of_pages: @book.number_of_pages, publisher: @book.publisher, reading_level: @book.reading_level, summary: @book.summary }
    end

    assert_redirected_to book_path(assigns(:book))
  end

  test "should show book" do
    get :show, id: @book
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @book
    assert_response :success
  end

  test "should update book" do
    patch :update, id: @book, book: { author: @book.author, book_title: @book.book_title, copyrighted: @book.copyrighted, genre: @book.genre, number_of_pages: @book.number_of_pages, publisher: @book.publisher, reading_level: @book.reading_level, summary: @book.summary }
    assert_redirected_to book_path(assigns(:book))
  end

  test "should destroy book" do
    assert_difference('Book.count', -1) do
      delete :destroy, id: @book
    end

    assert_redirected_to books_path
  end
end
