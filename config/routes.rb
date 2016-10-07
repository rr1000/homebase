Rails.application.routes.draw do
    devise_for :users, :controllers => { :registrations => 'registrations' }
    devise_scope :user do
        get '/logout', to: 'devise/sessions#destroy'
        get '/sign-in', to: 'devise/sessions#new'
    end
    get '/no-access', to: 'no_access#show'
    get '/about', to: 'static_pages#about'
    get '/contact', to: 'static_pages#contact'
    root 'static_pages#schedule'
end
