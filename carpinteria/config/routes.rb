Rails.application.routes.draw do
  #rutas para historial de horas
  get 'hours_history/index'
  get 'hours_history/new'
  post 'hours_history/create'
  get 'hours_history/:id/edit', to: 'hours_history#edit', as: 'hours_history_edit'
  patch 'hours_history/:id/update', to: 'hours_history#update', as: 'hours_history_update'
  delete 'hours_history/:id/destroy', to: 'hours_history#destroy', as: 'hours_history_destroy'
  #ruta para home
  get 'home/index'
  #rutas para empleados
  get 'employee/index'
  get 'employee/new'
  post 'employee/create'
  get 'employee/:id/edit', to: 'employee#edit', as: 'employee_edit'
  patch 'employee/:id/update', to: 'employee#update', as: 'employee_update'
  delete 'employee/:id/destroy', to: 'employee#destroy', as: 'employee_destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #Raiz
  root 'home#index'
end
