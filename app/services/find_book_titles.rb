class Book
  def get_book
    response = HTTParty.get('https://api.nytimes.com/svc/books/v3/lists/combined-print-and-e-book-fiction.json=[NYT_API_KEY]')
    response["results"]["books"]["title"]
  end
end
