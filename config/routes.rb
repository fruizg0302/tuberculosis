RegistroTBRails3::Application.routes.draw do

  #get "start_controller/index"
  get 'inicio' => 'start_controller#index', as: 'inicio'
  resources :registros
  devise_for :users

  root to: 'registros#index'

  devise_for :users, :path_prefix => 'my'

end
