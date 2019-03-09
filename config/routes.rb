Rails.application.routes.draw do
  root "home#index"

  get '/resume/:code' , to: 'resumes#index', as: :resume_config
  get '/resume_builder', to: 'resumes#builder', as: :resume_builder


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
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
