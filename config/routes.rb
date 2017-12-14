Rails.application.routes.draw do
  root to: 'buildings#index'

  resources :student_assigments
  resources :teacher_assigments
  resources :lessons
  resources :students
  resources :courses
  resources :teachers
  resources :rooms
  resources :buildings
  get '/buildings/:id/today', to: 'buildings#show_today', as: 'building_today'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
