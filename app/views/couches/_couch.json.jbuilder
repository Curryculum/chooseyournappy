json.extract! couch, :id, :marque, :modele, :taille, :user_id, :created_at, :updated_at
json.url couch_url(couch, format: :json)
