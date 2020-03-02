Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :users, only: [:show, :edit, :update] do
    resources :assigned_tasks, only: [:index, :edit, :update, :destroy]

  end
  resources :categories, only: [:index, :new, :create, :destroy] do
    resources :tasks, only: [:show, :new, :create, :edit, :update], shallow: true
    resources :options, only: [:index, :create, :update, :show, :destroy], shallow: true
  end
  resources :option_categories, only: [:index, :new, :create, :destroy], shallow: true
  resources :groups, only: [:new, :create, :show]

end
