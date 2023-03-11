Rails.application.routes.draw do
  get 'render/index'
  devise_for :users, controllers: { registrations: "registrations" }

  resources :users

  resources :budget_categories, only: [:index, :show, :new, :create] do
    resources :expenses, only: [:index, :show, :new]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'splash_screen#index'
end
