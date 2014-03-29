TwitterForZombies::Application.routes.draw do
  get '/undead', to: redirect('/zombies')
end
