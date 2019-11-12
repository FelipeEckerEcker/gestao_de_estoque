json.extract! endereco, :id, :nome, :cep, :bairro, :created_at, :updated_at
json.url endereco_url(endereco, format: :json)
