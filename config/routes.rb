Rails.application.routes.draw do
  devise_for :users
  resources :students
  resources :agents
  resources :levels
  resources :courses
  root 'welcome#index'

  get 'about' => 'welcome#about'

  get 'contact' => 'welcome#contact'

  get 'apply-online' => 'students#new'

  get 'apply' => 'welcome#apply'

  post "apply-online", to: "students#create"
  put "apply-online", to: "students#update"
  match "apply-online" => "students#create", :via => "post"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
