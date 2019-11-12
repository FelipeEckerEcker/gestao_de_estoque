json.extract! movimento_de_estoque, :id, :data, :quantidade, :pessoa, :operacao, :produto, :created_at, :updated_at
json.url movimento_de_estoque_url(movimento_de_estoque, format: :json)
