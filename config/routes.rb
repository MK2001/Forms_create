Rails.application.routes.draw do
  get '/people/' => 'application#show'
  get '/create_profile' => 'application#create'
end
