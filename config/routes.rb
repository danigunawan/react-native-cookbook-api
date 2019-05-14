Rails.application.routes.draw do
  mount ActionCable.server => '/cable'

  resources :recipes, only: %i[index show]
end
