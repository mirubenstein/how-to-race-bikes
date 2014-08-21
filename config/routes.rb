HowToRaceBikes::Application.routes.draw do
  match('/', {via: :get, to: 'lessons#index'})
  match('/lessons/:number', {via: :get, to: 'lessons#show'})
  match('/admin/lessons/:number', {via: [:patch, :put], to: 'lessons#update_admin'})

  match('/admin', {via: :get, to: 'admin#index'})
  match('/admin/lessons', {via: :post, to: 'lessons#create_admin'})
  match('/admin/sections', {via: :post, to: 'sections#create_admin'})
  # match('/admin/lessons/new', {via: :get, to: 'lessons#new_admin'})
  match('/admin/lessons/:number', {via: :get, to: 'lessons#show_admin'})
  match('/admin/lessons/:number', {via: :delete, to: 'lessons#destroy_admin'})

  # match('/admin/sections/new', {via: :get, to: 'sections'})
end
