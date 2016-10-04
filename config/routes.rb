Rails.application.routes.draw do
    devise_for :users, :controllers => { :invitations => 'users/invitations' }
    devise_scope :user do
        get '/logout', to: 'devise/sessions#destroy'
        get '/sign-in', to: 'devise/sessions#new'
    end
    get '/about', to: 'static_pages#about'
    root 'static_pages#home'
end
