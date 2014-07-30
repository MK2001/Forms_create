Rails.application.routes.draw do
  get '/profiles/:id' => 'user#show'
  get '/new_profile' => 'user#new'
  get '/create_profile' => 'user#create'
  get '/profiles/:id/edit' => 'user#edit'
  get '/update_profile/:id' => 'user#update'
  get '/profiles/:id/destroy' => 'user#destroy'
  get '/profiles' => 'user#index'
end 

