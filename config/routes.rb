Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get 'ads' => 'ads#index'
  get 'ads/new' => 'ads#new'
  get 'ads/:id' => 'ads#show'
  get 'ads/:id/delete' => 'ads#delete'
  get 'ads/:id/edit' => 'ads#edit'
  get 'ads/:id/update' => 'ads#update'
  
  post 'ads' => 'ads#create'
  patch 'ads/:id/update' => 'ads#update'
end
