Rails.application.routes.draw do
  namespace :admin do
    root to:'root#show', format:false
    namespace :campaigns do
      resources :templates, only:[:show], param: :name, format:false
    end
    resources :campaigns, param: :cid
    resources :events, only:[:index], format:/html|json/
    resources :people, only:[:index], format:/html|json/
  end
  get '/results/(:cid/(:pid))', to:'fishing#viewed_result', format:false, as:'fishing_result'
  get '/images/(:cid/(:pid))', to:'fishing#opened_email', format:false
  get '/forms(/:cid(/:pid))', to:'fishing#clicked_link', format:false
  post '/forms(/:cid(/:pid))', to:'fishing#submitted_data', format:false
  root to:'fishing#clicked_link', format:false
end
