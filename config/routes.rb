Rails.application.routes.draw do
  root :to => "home#index"
  post 'comment', to:'comments#create'
  post 'general_comment', to:'general_comments#create'
  put '/lines/:id/upvote', to: 'lines#upvote', as: 'upvote_line'
  put '/lines/:id/downvote', to: 'lines#downvote', as: 'downvote_line'
  put '/comments/:id/upvote', to: 'comments#upvote', as: 'upvote_comment'
  put '/comments/:id/downvote', to: 'comments#downvote', as: 'downvote_comment'
  put '/general_comments/:id/upvote', to: 'general_comments#upvote', as: 'upvote_general_comment'
  put '/general_comments/:id/downvote', to: 'general_comments#downvote', as: 'downvote_general_comment'
end
