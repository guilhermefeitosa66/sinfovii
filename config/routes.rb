Rails.application.routes.draw do
  get 'list/index'

  get 'member/index'

  get 'minicurso/index'

  get 'confirmation/index'

  get 'lista', to: "list#index", as: 'geral'

  resources :administrators
  get 'checkout/:id', to: 'checkout#create', as: 'checkout'

  get 'n/:id' => 'notifications#create'


  get 'registres/painel' => 'registres#painel'

  get 'member', to: 'member#index', as: 'index'

  resources :panelists
  resources :courses
  resources :contacts
  
  devise_for :users, :controllers  => {
             :registrations => 'users/registrations',
             :sessions => 'users/sessions'
             # ...
           }

  resources :minhainscricaos
  resources :palestra_inscricaos
  resources :palestras
  
  # root 'menu#index'
  root 'menu#new_index'
  get '/dashboard', to: 'menu#dashboard', as: 'dashboard'
  get '/certificado', to: 'menu#certificado', as: 'certificado'

  get 'pay/:id/user' => "checkout#create"


  get 'confirma/:id', to: "confirmation#index", as: 'confirmation'

  get 'menu/index'
  #get 'painel/admin'

  get 'inscricoes/index'
  
  get 'contato/index'

  get 'parceiros/index'

  get 'programacao/index'

  get 'inscricoes/index'

  get 'artigos/index'
  
  get 'comite_cientifico/index'

  get 'comissao_organizadora/index'

  get 'apresentacao/index'

  #get 'menu#index'
  match ':controller(/:action(/:id))', :via => [:get, :post]
end
