Rails.application.routes.draw do

  get "/", to: 'squirell_sitings#index'

  namespace :api do 
    namespace :v1 do
     get '/squirells/:id', to: 'squirell_sitings#show'
     get '/squirells', to: 'squirell_sitings#index'
     post '/squirells', to: 'squirell_sitings#create'
     patch '/squirells/:id', to: 'squirell_sitings#update'
     delete '/squirells/:id', to: 'squirell_sitings#destroy'
   end
 end
end
