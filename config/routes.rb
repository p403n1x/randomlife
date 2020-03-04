Rails.application.routes.draw do
  # devise_for :users
  devise_for :users, controllers: { registrations: "registrations" }
  root to: 'pages#home'

  resources :users, only: [:show, :edit, :update] do
    resources :assigned_tasks, only: [:index, :edit, :update, :destroy]

  end
  resources :categories, only: [:index, :new, :create, :destroy] do
    resources :tasks, only: [:show, :new, :create, :edit, :update], shallow: true
    resources :options, only: [:index, :create, :update, :show, :destroy], shallow: true
    resources :actions, only: [:create, :show, :destroy], shallow: true
  end
  resources :option_categories, only: [:index, :new, :create, :destroy], shallow: true
  resources :actions, only: [:index]
  resources :groups, only: [:new, :create, :show] do
    resources :users, only: [:create]
  end
end
