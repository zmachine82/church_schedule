Rails.application.routes.draw do

  resources :schedules do
    resources :events
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
