Rails.application.routes.draw do

  devise_for :admins, skip: [:passwords],controllers:{
      sessions: 'admin/sessions',
      registrations: 'admin/registrations'
  }

  namespace :admin do
      get 'top' => 'homes#top', as: 'top'
      resources :users, only: [:index, :show]
      resources :menus, only: [:index, :show]

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
