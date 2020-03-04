class RegistrationsController < Devise::RegistrationsController
  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]
  protected

   def after_sign_up_path_for(resource)
    new_group_path
   end
end
