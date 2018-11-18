Rails.application.routes.draw do
  get 'blogs/top' ,to: 'blogs#top'
  resources :blogs do
    collection do
      post :confirms
    end
  end
end
