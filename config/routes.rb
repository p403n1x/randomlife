Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :users, only: [:show, :edit, :update] do
    resources :assigned_tasks, only: [:edit, :update]
  end
  resources :categories, only: [:index, :new, :create] do
    resources :tasks, only: [:show, :new, :create, :edit, :update], shallow: true
    resources :options, only: [:index, :create, :update, :show, :destroy], shallow: true
  end

end
