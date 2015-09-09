Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :articles
    end
    resources(
      :password_resets,
      only: [:create, :update],
      constraints: {
        id: TokenAuthenticateMe::UUID_REGEX
      }
    )
    resource :session, only: [:create, :show, :destroy]
    get :csrf, to: 'csrf#index'
  end

  # Clobbers all routes, Keep this as the last route in the routes file
  get '(*path)', to: 'ember_application#index'
end
