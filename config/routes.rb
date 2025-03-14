# config/routes.rb
Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :user_types
      resources :users
      resources :categories
      resources :tasks
      resources :progresses
      resources :notes
    end
  end
end
