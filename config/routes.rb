Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :homes
    root 'home#top'

  get "/" => "home#top"
  get "home/newmail" => "home#newmail"
  get "home/a" => "home#a"
  post "home/mail" => "home#mail"
end
