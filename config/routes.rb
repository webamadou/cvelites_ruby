Rails.application.routes.draw do
  namespace :admin do
    resources :resumes
  end
  namespace :admin do
    resources :templates
  end
  namespace :admin do
    resources :hobbies
  end
  namespace :admin do
    resources :educations
  end
  namespace :admin do
    resources :experiences
  end
  namespace :admin do
    resources :users
  end
  namespace :admin do
    resources :schools
  end
  namespace :admin do
    resources :companies
  end
  namespace :admin do
    resources :domains
  end
  namespace :admin do
    resources :countries
  end
  namespace :admin do
    resources :languages
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
