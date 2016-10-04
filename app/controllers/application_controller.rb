class ApplicationController < ActionController::Base
    private
        protect_from_forgery with: :exception
        def after_sign_out_path_for(resource_or_scope)
            sign_in_path
        end
end
