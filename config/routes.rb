# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  namespace :api do
    namespace :v1 do
      resource :users, only: %i[create]
      match '/users' => 'users#options', via: :options
    end
  end

  scope 'api/v1' do
    use_doorkeeper do
      skip_controllers :authorizations, :applications, :authorized_applications
    end
  end

  resources :apidocs, only: [:index]
  resources :swagger, only: [:index]
end
