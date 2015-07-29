Rails.application.routes.draw do
  # Routes for the Mark resource:
  # CREATE
  get '/new_mark' => 'marks#new'
  get '/create_mark' => 'marks#create'

  # READ
  get '/marks' => 'marks#index'
  get '/marks/:id' => 'marks#show'

  # UPDATE
  get '/marks/:id/edit' => 'marks#edit'
  get '/marks/:id/update' => 'marks#update'

  # DELETE
  get '/marks/:id/destroy' => 'marks#destroy'
  
  # Routes for the Mark resource:
  # CREATE
  get '/new_users' => 'users#new'
  get '/create_users' => 'users#create'

  # READ
  get '/users' => 'users#index'
  get '/users/:id' => 'users#show'

  # UPDATE
  get '/users/:id/edit' => 'users#edit'
  get '/users/:id/update' => 'users#update'

  # DELETE
  get '/users/:id/destroy' => 'users#destroy'
end
