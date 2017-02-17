Rails.application.routes.draw do
  get :admin, to:'admin#show', format:false
  namespace :admin do
    resources :events, only:[:index], format:false
    namespace :events do
      resources :searches, only:[:index], format:'json'
    end
  end
  get '/result', to:'cats#result', as:'result_cat'
  get '/', to:'cats#new',    as:'new_cat'
  post '/', to:'cats#create', as:'cats'
end
