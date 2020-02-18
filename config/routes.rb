Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # read
  get '/tasks', to: 'tasks#index', as: :tasks
  get '/tasks/new', to: 'tasks#new', as: :new_tasks
  # from here on everything will be catched by :id
  get '/tasks/:id', to: 'tasks#show', as: :task

  # other than get
  post '/tasks', to: 'tasks#create'

  # Update
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch '/tasks/:id', to: 'tasks#update'
  # Destroy
  delete 'tasks/:id', to: 'tasks#destroy'
end
