HowToRaceBikes::Application.routes.draw do
  match('/', {via: :get, to: 'lessons#index'})
  match('/lessons/:number', {via: :get, to: 'lessons#show'})
  match('/admin/lessons/:number', {via: [:patch, :put], to: 'lessons#update_admin'})

  match('/admin', {via: :get, to: 'lessons#index_admin'})
  match('/admin/lessons', {via: :post, to: 'lessons#create_admin'})
  match('/admin/lessons/new', {via: :get, to: 'lessons#new_admin'})
  match('/admin/lessons/:number', {via: :get, to: 'lessons#show_admin'})
  match('/admin/lessons/:number', {via: :delete, to: 'lessons#destroy_admin'})
end
