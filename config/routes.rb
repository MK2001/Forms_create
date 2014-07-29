Rails.application.routes.draw do
  get '/show/' => 'application#show'
  get '/create_profile' => 'application#create'
  get 'profile/:id/edit' => 'application#edit'
  get '/update_profile/:id' => 'application#update'
end
