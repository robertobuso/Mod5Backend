Rails.application.routes.draw do
  namespace :api do
   namespace :v1 do
       root 'welcome#index'
     resources :experiences
     resources :tasks
     resources :items
   end
 end
end
