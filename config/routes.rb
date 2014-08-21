HowToRaceBikes::Application.routes.draw do
  match('/', {via: :get, to: 'lessons#index'})
  match('/lessons/:lesson_number', {via: :get, to: 'lessons#show'})
  match('/admin/lessons/:lesson_number', {via: [:patch, :put], to: 'lessons#update_admin'})
  match('/admin/sections/:section_number', {via: [:patch, :put], to: 'sections#update_admin'})
  match('/admin', {via: :get, to: 'admin#index'})
  match('/admin/lessons', {via: :post, to: 'lessons#create_admin'})
  match('/admin/sections', {via: :post, to: 'sections#create_admin'})
  match('/admin/lessons/:lesson_number', {via: :get, to: 'lessons#show_admin'})
  match('/admin/lessons/:lesson_number', {via: :delete, to: 'lessons#destroy_admin'})
  match('/admin/sections/:section_number', {via: :delete, to: 'sections#destroy_admin'})
end
