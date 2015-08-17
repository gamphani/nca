Rails.application.routes.draw do
  resources :test_mes

  get 'report_gender/index'

  get 'report_gender/generate'

  get 'report_gender/trafficking'

  get 'report_gender/theology'

  resources :docs
  resources :facilities

  get 'form_gender/index'

  get 'form_gender/trafficking'

  get 'gender/index'

  get 'gender/trafficking'

  get 'report_health/index'

  get 'form_health/index'

  get 'forms/new'

  #root to: 'visitors#index'
  #get 'visitors/programs'
  #post 'visitors/programs'
  devise_for :users
  devise_scope :user do
    authenticated :user do
      #root to: 'visitors#index', as: :authenticated_root
      root to: 'home#index', as: :authenticated_root
      get 'visitors/programs'
      get 'forms/new'
      post 'forms/new'
      get 'forms/create'
      post 'forms/create'
      get 'form_health/index'
      post 'form_health/index'
      get 'form_health/mnh'
      post 'form_health/mnh'
      get 'form_health/training'
      post 'form_health/training'
      get 'form_health/iptt'
      post 'form_health/iptt'
      get 'form_health/hiv'
      post 'form_health/hiv'
      get 'form_health/create'
      post 'form_health/create'
      get 'form_gender/index'
      post 'form_gender/index'
      get 'form_gender/trafficking'
      post 'form_gender/trafficking'
      get 'form_gender/theology'
      post 'form_gender/theology'
      get 'form_gender/create'
      post 'form_gender/create'
      get 'report_health/generate'
      post 'report_health/generate'
      get 'report_health/mnh'
      post 'report_health/mnh'
      get 'report_health/training'
      post 'report_health/training'
      get 'report_health/iptt'
      post 'report_health/iptt'
      get 'report_health/hiv'
      post 'report_health/hiv'
      get 'report_gender/generate'
      post 'report_gender/generate'
      get 'report_gender/trafficking'
      post 'report_gender/trafficking'
      get 'report_gender/theology'
      post 'report_gender/theology'
      get 'home/index'
      post 'home/index'
      get 'facilities/index'
      post 'facilities/index'
      get 'facilities/new'
      post 'facilities/new'
      get 'docs/index'
      post 'docs/index'
      get 'docs/new'
      post 'docs/new'
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
 end
  resources :users
end
