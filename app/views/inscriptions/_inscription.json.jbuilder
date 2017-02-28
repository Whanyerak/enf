json.extract! inscription, :id, :nom, :prenom, :adresse_mail, :password, :created_at, :updated_at
json.url inscription_url(inscription, format: :json)