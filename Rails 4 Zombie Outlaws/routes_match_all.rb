ZombieOutlaws::Application.routes.draw do
  match '/undeads', to: 'undeads#index', via: :all
end
