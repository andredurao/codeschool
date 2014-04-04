ZombieOutlaws::Application.routes.draw do
  match '/outlaws', to: 'zombies#outlaws', via: :get
end
