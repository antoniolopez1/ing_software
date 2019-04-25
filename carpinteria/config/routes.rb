Rails.application.routes.draw do
  get 'home/index'
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
