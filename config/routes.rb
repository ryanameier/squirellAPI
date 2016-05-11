Rails.application.routes.draw do

  namespace :api do 
    namespace :v1 do
     get 'squirell_siting/:id', to: 'squirell_sitings#show'
     get 'squirell_siting', to: 'squirell_sitings#index'
     post 'squirell_siting', to: 'squirell_sitings#create'
     patch 'squirell_siting/:id', to: 'squirell_sitings#update'
     delete 'squirell_siting/:id', to: 'squirell_sitings#destroy'
   end
 end
end
