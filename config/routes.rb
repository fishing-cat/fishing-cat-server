Rails.application.routes.draw do
  namespace :admin do
    root to:'root#show', format:false
    resources :events, only:[:index], format:false
    namespace :events do
      resources :searches, only:[:index], format:'json'
    end
    resources :reports, only:[:index], format:false
    namespace :reports do
      resources :searches, only:[:index], format:'json'
    end
  end
  get  '/result/:cid/:pid(/:fingerprint)', to:'fishing#viewed_result', format:false
  get  '/result',                          to:'fishing#viewed_result', format:false
  get  '/images/:cid/:pid(/:fingerprint)', to:'fishing#opened_email', format:false
  get  '/images',                          to:'fishing#opened_email', format:false
  get  '/:cid/:pid(/:fingerprint)',        to:'fishing#clicked_link', format:false
  get  '/',                                to:'fishing#clicked_link', format:false
  post '/:cid/:pid(/:fingerprint)',        to:'fishing#submitted_data', format:false
  post '/',                                to:'fishing#submitted_data', format:false
end
