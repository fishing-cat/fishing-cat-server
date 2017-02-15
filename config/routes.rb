Rails.application.routes.draw do
  get '/', to:'events#new', as:'new_event'
  post '/', to:'events#create', as:'create_event'
end
