Rails.application.routes.draw do
  root :to => "home#index"
  post 'comment', to:'comments#create'
  put '/lines/:id/upvote', to: 'lines#upvote', as: 'upvote_line'
  put '/lines/:id/downvote', to: 'lines#downvote', as: 'downvote_line'
  put '/comments/:id/upvote', to: 'comments#upvote', as: 'upvote_comment'
  put '/comments/:id/downvote', to: 'comments#downvote', as: 'downvote_comment'
end
