Rails.application.routes.draw do
  use_doorkeeper
  devise_for :users
  namespace :api do
    namespace :alexa do
      resource :handler, only: [:create]
    end
  end
end
