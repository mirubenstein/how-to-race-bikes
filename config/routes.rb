HowToRaceBikes::Application.routes.draw do
  match('/', {via: :get, to: 'lessons#index'})
end
