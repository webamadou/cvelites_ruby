Rails.application.routes.draw do
  devise_for :users
  root 'home#index'

  namespace :api do
    namespace :v1 do
      resources :cvbuilders
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #admin namespace
  namespace :admin do
    resources :skills
    resources :awards
    resources :achievements
    resources :resumes
    resources :templates
    resources :hobbies
    resources :educations
    resources :experiences
    resources :users
    resources :schools
    resources :companies
    resources :domains
    resources :countries
    resources :languages
  end
end
