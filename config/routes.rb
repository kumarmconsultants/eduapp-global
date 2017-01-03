Rails.application.routes.draw do
  

  devise_for :agents, controllers: {
        sessions: 'agents/sessions',
        registrations: 'agents/registrations'
      }
  devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations'
      }
  resources :students
  resources :levels
  resources :courses

  root 'welcome#index'

  get  'users/sign_up'   => 'users/registrations#new'

  

  get 'about' => 'welcome#about'

  get 'contact' => 'welcome#contact'

  get 'apply-online' => 'students#new'

  get 'apply' => 'welcome#apply'

  post "apply-online", to: "students#create"
  put "apply-online", to: "students#update"
  match "apply-online" => "students#create", :via => "post"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
