Rails.application.routes.draw do
  root :to => "home#index"
    # resources :lines do
    #   resources :comments
    # end
  post 'comment', to:'comments#create'
  # post 'lines/:id/votes', to: 'votes#create', as: 'line_votes'
  # post 'lines/:line_id/comments/:id/votes', to: 'votes#create', as: 'comment_votes'
end
