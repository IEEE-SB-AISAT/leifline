Rails.application.routes.draw do
  devise_for :users
  resources :links

  devise_scope :user do
    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end

    authenticated :user do
      root 'links#index', as: :authenticated_root
    end
  end
end
