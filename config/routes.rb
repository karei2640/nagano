Rails.application.routes.draw do
  root :to =>"homes#top"

  devise_for :admin, controllers: {
  sessions:      'admin/sessions',
  passwords:     'admin/passwords',
  registrations: 'admin/registrations'
}
devise_for :customers, controllers: {
  sessions:      'public/sessions',
  passwords:     'public/passwords',
  registrations: 'public/registrations'
}
  
  namespace :admin do
    resources :customers, only: [:index, :show, :edit, :update]
    get "/" => "homes#top"

  end

  
  scope module: :public do
    resource :customers, only: [:show, :update, :edit]
    patch "/customers/withdraw" => "customers#withdraw"


    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
