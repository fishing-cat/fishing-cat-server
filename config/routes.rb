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
  get  '/result/(:cid/(:pid))', to:'fishing#viewed_result',  format:false, as:'fishing_result'
  get  '/images/(:cid/(:pid))', to:'fishing#opened_email',   format:false
  get  '(/(:cid/(:pid)))',      to:'fishing#clicked_link',   format:false
  post '(/(:cid/(:pid)))',      to:'fishing#submitted_data', format:false
end
