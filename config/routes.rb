Rails.application.routes.draw do
  root to: 'buildings#index'

  resources :student_assigments
  resources :teacher_assigments
  resources :lessons
  resources :students
  resources :courses
  resources :teachers
  resources :rooms
  get '/buildings/:id', to: 'buildings#show', as: 'building'
  resources :buildings

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
