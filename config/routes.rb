Rails.application.routes.draw do

  get 'options/index'
  get 'options/show'
  get 'options/create'
  get 'options/update'
  get 'options/destroy'
  get 'tasks/show'
  get 'tasks/new'
  get 'tasks/create'
  get 'tasks/edit'
  get 'tasks/update'
  get 'categories/index'
  get 'categories/new'
  get 'categories/create'
  get 'assigned_tasks/edit'
  get 'assigned_tasks/update'
  get 'users/show'
  devise_for :users
  root to: 'pages#home'

  resources :users, only: :show do
    resources :assigned_tasks, only: [:edit, :update]
  end
  resources :categories, only: [:index, :new, :create] do
    resources :tasks, only: [:show, :new, :create, :edit, :update], shallow: true
    resources :options, only: [:index, :create, :update, :show, :destroy], shallow: true
  end

end
