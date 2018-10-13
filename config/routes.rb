Rails.application.routes.draw do
  namespace :api do
   namespace :v1 do
     resources :experiences
     resources :items
     resources :tasks
   end
 end
end
