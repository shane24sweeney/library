json.array!(@books) do |book|
  json.extract! book, :id, :title, :isbn, :description, :authors, :status
  json.url book_url(book, format: :json)
end
