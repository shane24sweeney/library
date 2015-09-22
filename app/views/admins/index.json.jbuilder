json.array!(@admins) do |admin|
  json.extract! admin, :id, :email, :name, :password, :status, :profile
  json.url admin_url(admin, format: :json)
end
