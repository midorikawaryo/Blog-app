Rails.application.routes.draw do
  get 'blogs/top' ,to: 'blogs#top'
  resources :sessions, only: [:new, :create, :destroy]
  resources :users
  resources :blogs do
    collection do
      post :confirm
    end
  end
end
