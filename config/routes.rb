Rails.application.routes.draw do
  # get :admin, to:'admin#show', format:false
  namespace :admin do
    root to:'root#show', format:false
    resources :events, only:[:index], format:false
    namespace :events do
      resources :searches, only:[:index], format:'json'
    end
    resources :people, only:[:index], format:false
    namespace :people do
      resources :searches, only:[:index], format:'json'
    end
  end
  namespace :fishing, path:'/' do
    get  '/:cid/:pid(/:fingerprint)',        to:'events#new',    format:false, as:'new_cat'
    post '/:cid/:pid(/:fingerprint)',        to:'events#create', format:false, as:'cats'
    get  '/images/:cid/:pid(/:fingerprint)', to:'images#show',   format:/png/, as:'image'
  end
end
