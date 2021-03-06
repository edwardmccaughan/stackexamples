Rails.application.routes.draw do

  

  resources :posts

  get "homepage" => "pages#homepage"

  get "about" => "pages#about"

  get "contact" => "pages#contact"

  resources :freelancers do
    resources :reviews
    resources :past_works
    
  	collection do
  		get :searchresults
  	end
  	member do
  		get :summary
  	end
  end
 
end
