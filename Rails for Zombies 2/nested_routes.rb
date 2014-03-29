RailsForZombies::Application.routes.draw do
  resources :zombies do
    resources :tweets
    resources :weapons
  end
end
