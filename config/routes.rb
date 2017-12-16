Rails.application.routes.draw do
  root to: 'buildings#index'

  #TODO: předělat routy nefunguje kalendar po stisknutí na room
  resources :rooms do
    resources :rooms, only: [:show, :index]
    resources :lessons, only: [:index, :show]
  end

  get '/buildings/:id/today', to: 'buildings#show_today', as: 'building_today'
  resources :buildings, only: [:show, :index]
  # get '/buildings', to: 'buildings#index', as: 'buildings'
  # get '/buildings/:id', to: 'buildings#show', as: 'building'
  # get '/buildings/:id/today', to: 'buildings#show_today', as: 'building_today'
  # get '/rooms', to: 'rooms#index', as: 'rooms'
  # get '/rooms/:id', to: 'rooms#show', as: 'room'

  namespace :admin do
    resources :student_assigments
    resources :teacher_assigments
    resources :lessons
    resources :students
    resources :courses
    resources :teachers
    resources :rooms
    resources :buildings
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
