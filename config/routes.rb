Rails.application.routes.draw do
    # , :controllers => { :registrations => 'registrations' }
    devise_for :users
    devise_scope :user do
        get '/logout', to: 'devise/sessions#destroy'
        get '/sign-in', to: 'devise/sessions#new'
    end
    # get '/no-access', to: 'no_access#show'
    root 'static_pages#schedule'
end
