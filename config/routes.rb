Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :departamentos
  resources :produtos, only: [:new, :create, :destroy, :edit, :update]
  get "/produtos/busca" => "produtos#busca", as: :busca_produto
  root "produtos#index"
end
