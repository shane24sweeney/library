json.array!(@books) do |book|
  json.extract! book, :id, :title, :description, :authors, :status
  json.url book_url(book, format: :json)
end
