Rails.application.routes.draw do
  root 'formulation#index'
  get '/submit', to: 'formulation#submit'
end
