Rails.application.routes.draw do

  devise_for :admins, skip: [:passwords],controllers:{
      sessions: 'admins/sessions'
  }

  namespace :admin do
      get 'top' => 'homes#top', as: 'top'
  end

  devise_for :users, skip: [:passwords], controllers: {
      sessions: 'devise/sessions',
      registrations: 'devise/registrations'
  }

  scope module: :public do
      root to: 'homes#top'
      resources :users, only: [:show]

  end

end
