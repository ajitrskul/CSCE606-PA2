# root = initial page for application (i.e. "/") --> forcing redirect to movies page
Rails.application.routes.draw do
  resources :movies
  root :to => redirect('/movies#index') # bad practice to have same page twice
  # can redirect the URL to the movies#index, or you could write, resources :movies, except: [:index]
end