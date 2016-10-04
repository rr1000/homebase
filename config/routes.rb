Rails.application.routes.draw do
    devise_for :users, :controllers => { :registrations => 'registrations' }
    devise_scope :user do
        get '/logout', to: 'devise/sessions#destroy'
        get '/sign-in', to: 'devise/sessions#new'
        get '/register0912e891282999asd112', to: 'devise_invitable/registrations#new'
    end
    get '/no-access', to: 'no_access#show'
    root 'static_pages#schedule'
end
