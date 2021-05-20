require 'test_helper'

class BooksControllerTest < ActionDispatch::IntegrationTest

  test "get index: is successful" do
    get books_url
    assert_response :success
    assert_template :index
    assert_not_nil assigns(:books)
  end

  test "post create: creates a book" do
    assert_difference('Book.count') do
      post books_url, params: { book: { author: "J.K Rowling", lend_date: "2020-02-03", returned_date: "2020-02-07", status: "On shelf", title: "Harry Potter and the Philosopher’s Stone" } }
    end
    assert_redirected_to book_url(Book.last)
  end
  
end
