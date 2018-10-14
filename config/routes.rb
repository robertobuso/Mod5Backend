Rails.application.routes.draw do
  namespace :api do
   namespace :v1 do
     resources :experiences, only: [:index, :update]
     resources :items, only: [:index, :update]
     resources :tasks, only: [:index, :update]
   end
 end
end
