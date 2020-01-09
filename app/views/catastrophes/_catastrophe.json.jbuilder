json.extract! catastrophe, :id, :image, :nom, :genre, :lieu, :date, :puissance, :morts, :blesses, :created_at, :updated_at
json.url catastrophe_url(catastrophe, format: :json)
