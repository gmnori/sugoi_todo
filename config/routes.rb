Rails.application.routes.draw do
  get 'todos/:id/clear' => 'todos#clear', as: :todos_clear
  get 'todos/total_sugoi' => 'todos#total_sugoi'

  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'
  }

  devise_scope :user do
    get "user/:id", :to => "users/registrations#detail"
    get "signup", :to => "users/registrations#new"
    get "login", :to => "users/sessions#new"
    get "logout", :to => "users/sessions#destroy"
  end

   


  resources :todos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
