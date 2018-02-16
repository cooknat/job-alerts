Rails.application.routes.draw do
  
  resources :job_pages

  get 'about' => 'welcome#about'

  root 'welcome#index'

  devise_for :users
  

end
