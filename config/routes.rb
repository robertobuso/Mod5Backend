Rails.application.routes.draw do
  namespace :api do
   namespace :v1 do
     resources :experiences
     resources :tasks
     resources :items
   end
 end
end
