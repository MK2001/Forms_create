Rails.application.routes.draw do
  get '/profiles/:id' => 'application#show'
  get '/new_profile' => 'application#new'
  get '/create_profile' => 'application#create'
  get '/profiles/:id/edit' => 'application#edit'
  get '/update_profile/:id' => 'application#update'
  get '/profiles/:id/destroy' => 'application#destroy'
  get '/profiles' => 'application#index'
end 

