Rails.application.routes.draw do

  resources :photos do
    resources :comments
  end
  resources :events do
    resources :comments
  end
  resources :articles do
    resources :comments
  end


end
