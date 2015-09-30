json.array!(@books) do |book|
  json.extract! book, :id, :isbn, :title, :desc, :author
  json.url book_url(book, format: :json)
end
