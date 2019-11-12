Rails.application.routes.draw do
  resources :estados
  resources :cidades
  resources :enderecos
  resources :pessoas
  resources :movimento_de_estoques
  resources :operacaos
  resources :produtos
  resources :unidades
  resources :grupode_produtos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
