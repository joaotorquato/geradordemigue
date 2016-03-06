Rails.application.routes.draw do
  root 'excuses#index'
  resources :excuses, only: [:index] do
    collection do
      get 'generate'
    end
  end
end
