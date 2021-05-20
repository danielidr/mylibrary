json.extract! book, :id, :title, :author, :status, :returned_date, :lend_date, :created_at, :updated_at
json.url book_url(book, format: :json)
