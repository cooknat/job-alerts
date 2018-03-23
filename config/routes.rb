Rails.application.routes.draw do  
 
  get 'groundworkdocs/home'

  get 'groundworkdocs/animations'

  get 'groundworkdocs/breakpoints'

  get 'groundworkdocs/responsive_text'

  get 'groundworkdocs/navigation'

  get 'groundworkdocs/media_queries'

  get 'groundworkdocs/forms'

  get 'groundworkdocs/grid'

  get 'groundworkdocs/boxes'

  get 'groundworkdocs/layout_c'

  get 'groundworkdocs/tables'

  get 'groundworkdocs/icons'

  get 'groundworkdocs/messages'

  get 'groundworkdocs/helpers'

  get 'groundworkdocs/typography'

  get 'groundworkdocs/tabs'

  get 'groundworkdocs/layout_b'

  get 'groundworkdocs/buttons'

  get 'groundworkdocs/layout_a'

  get 'groundworkdocs/placeholder_text'

  resources :job_pages

  resources :job_searches

  get 'about' => 'welcome#about'

  root 'welcome#index'

  devise_for :users
  

end
