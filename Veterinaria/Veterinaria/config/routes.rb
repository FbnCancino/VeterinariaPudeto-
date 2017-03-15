Rails.application.routes.draw do
  resources :boleta
  resources :productos
  resources :proveedors
  resources :agendas
  resources :veterinarios
  resources :consulta
  resources :pacientes
  resources :admins
  resources :clientes
get 'welcome/index'

root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
