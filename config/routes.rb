Rails.application.routes.draw do
  root :to => "home#index"
  post 'comment', to:'comments#create'
  put '/lines/:id/upvote', to: 'lines#upvote', as: 'upvote_line'
  put '/lines/:id/downvote', to: 'lines#downvote', as: 'downvote_line'
end
