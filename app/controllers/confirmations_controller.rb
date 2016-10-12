class ConfirmationsController < Devise::ConfirmationsController
    private
        def after_confrimation_path_for(resource_name, resour)
            root_path
        end
end
