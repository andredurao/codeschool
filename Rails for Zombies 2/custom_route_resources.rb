RailsForZombies::Application.routes.draw do
  resources :zombies do
    resources :weapons do
      put :toggle_condition, on: :member
      put :reload, on: :member
    end
  end
end