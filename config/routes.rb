R4r::Application.routes.draw do
  resources :students, only: [:new, :create]
  root :to => "students#new"
end
