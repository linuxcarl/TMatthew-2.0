TMatthew2::Application.routes.draw do

  namespace :admin do
    resources :employers
    resources :resumes
    resources :projects do
      resources :screenshots
    end
  end

  match 'portfolio' => 'projects#index'
  match 'resume' => 'public#resume', as: 'resume'
  match 'download_resume' => 'public#download_resume', as: 'download_resume'
  match 'about' => 'public#about'

  resources :sessions
  match 'login' => 'sessions#new', :as => 'login'
  match 'logout' => 'sessions#destroy', :as => 'logout'

  root to: 'public#index'

end
