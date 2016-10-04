Rails.application.routes.draw do
    devise_for :users, :controllers => { :invitations => 'users/invitations' }
    devise_scope :user do
        get '/logout', to: 'devise/sessions#destroy'
        get '/sign-in', to: 'devise/sessions#new'
        get '/register0912e891282999asd112', to: 'devise_invitable/registrations#new'
    end
    root 'static_pages#schedule'
end
