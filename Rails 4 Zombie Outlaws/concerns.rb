ZombieOutlaws::Application.routes.draw do
  concern :defensible do
		resources :shotguns
    resources :rifles
    resources :knives
	end
  
  resources :sheriffs, concerns: :defensible
  resources :gunslingers, concerns: :defensible
  resources :preachers, concerns: :defensible

end
