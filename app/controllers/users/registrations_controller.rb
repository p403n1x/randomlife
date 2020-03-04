# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

  def create
    user = User.create!(
      first_name: params['user']['first_name'],
      last_name: params['user']['last_name'],
      nickname: params['user']['nickname'],
      email: params['user']['email'],
      phone_number: params['user']['phone_number'],
      password: params['user']['password'],
      password_confirmation: params['user']['password_confirmation']
      )
  end
end
