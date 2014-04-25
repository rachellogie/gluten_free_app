Rails.application.routes.draw do

  root 'welcome#index'

  get '/restaurants', to: 'restaurants#index'

  get '/restaurants/new', to: 'restaurants#new'

  post '/restaurants/new', to: 'restaurants#create'

end
