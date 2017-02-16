Rails.application.routes.draw do
  get '/', to:'events#new', as:'new_event'
  post '/', to:'events#create', as:'create_event'
  namespace :admin do
    namespace :events do
      resources :search, only:[:index]
    end
    resources :events, only:[:index]
  end
end
