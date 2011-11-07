R4r::Application.routes.draw do
  resources :students, only: [:new, :create]
  match '/faq' => "pages#faq"
  match '/idea' => "pages#idea"
  match '/courses' => "pages#courses"
  root :to => "pages#index"
end
