Rails.application.routes.draw do
   
  resources :products
  resources :customers
  resources :products
  resources :products
  resources :posts
  resources :people
  resources :students
  resources :animals do
   member do
    get :download_image
   end
   get '/:name' => 'animals#welcome', on: :collection, constraints: lambda { |req| 
    req['name'] == 'navnath'
     }
   # above route will call welcome only when the passed param name is == navnath

  end
  resources :records
  resources :javascript_learnings do
    collection do
      get :javascript_demos
      get :dom_manipulation
      get :sorted
      get :navigation_dropdown
      get :w3schools
    end
  end
  resources :posts

  resources :orders

  resources :customers

  get "pages/contact_us"
  get "pages/home"
  get "pages/contact"
  get "pages/faq"
  get "pages/about_us"
  devise_for :users
  resources :products do
    member do
      get :delete
    end
  end

  root 'pages#home'
end

