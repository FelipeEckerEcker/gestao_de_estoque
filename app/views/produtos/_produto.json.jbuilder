json.extract! produto, :id, :nome, :unidade, :grupodeproduto, :created_at, :updated_at
json.url produto_url(produto, format: :json)
