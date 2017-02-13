Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'game', to: 'game_controller#game'
  get 'score', to: 'game_controller#score'
end
