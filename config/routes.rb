Rails.application.routes.draw do

  get 'rooms/:id/show' => 'rooms#show' ,as: 'rooms_show'

  mount ActionCable.server => '/cable'
  devise_for :users
  devise_for :admin_users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'home#top'

  resources :charges

  resources :users, only: [:index, :show, :edit, :update] do
    member do
      get :like_notes
    end
  end

  resources :notes, only: [:show, :create, :edit, :update, :destroy] do
    member do
      get :liking_users
    end
  end

  post '/like/:note_id' => 'likes#like', as: 'like'
  delete '/unlike/:note_id' => 'likes#unlike', as: 'unlike'

  get '/about' => 'home#about'
end
