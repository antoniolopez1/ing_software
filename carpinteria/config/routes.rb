Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  get 'material_for_furniture/index'
  get 'material_for_furniture/new'
  post 'material_for_furniture/create'
  get 'material_for_furniture/:id/edit', to: 'material_for_furniture#edit', as: 'material_for_furniture_edit'
  patch 'material_for_furniture/:id/update', to: 'material_for_furniture#update', as: 'material_for_furniture_update'
  delete 'material_for_furniture/:id/destroy', to: 'material_for_furniture#destroy', as: 'material_for_furniture_destroy'
 #rutas para materials_for_furniture
  get 'materials_for_furniture/index'
  get 'materials_for_furniture/new'
  post 'materials_for_furniture/create'
  get 'materials_for_furniture/:id/edit', to: 'materials_for_furniture#edit', as: 'materials_for_furniture_edit'
  patch 'materials_for_furniture/:id/update', to: 'materials_for_furniture#update', as: 'materials_for_furniture_update'
  delete 'materials_for_furniture/:id/destroy', to: 'materials_for_furniture#destroy', as: 'materials_for_furniture_destroy'
   #rutas para material
  get 'material/index'
  get 'material/new'
  post 'material/create'
  get 'material/:id/edit', to: 'material#edit', as: 'material_edit'
  patch 'material/:id/update', to: 'material#update', as: 'material_update'
  delete 'material/:id/destroy', to: 'material#destroy', as: 'material_destroy'

  #rutas para employee_payment
  get 'employee_payment/index'
  get 'employee_payment/new'
  post 'employee_payment/create'
  get 'employee_payment/:id/edit', to: 'employee_payment#edit', as: 'employee_payment_edit'
  patch 'employee_payment/:id/update', to: 'employee_payment#update', as: 'employee_payment_update'
  delete 'employee_payment/:id/destroy', to: 'employee_payment#destroy', as: 'employee_payment_destroy'
  #rutas para customer
  get 'customer/index'
  get 'customer/new'
  post 'customer/create'
  get 'customer/:id/edit', to: 'customer#edit', as: 'customer_edit'
  patch 'customer/:id/update', to: 'customer#update', as: 'customer_update'
  delete 'customer/:id/destroy', to: 'customer#destroy', as: 'customer_destroy'
  #rutas para utilities_for_furniture
  get 'utilities_for_furniture/index'
  get 'utilities_for_furniture/new'
  post 'utilities_for_furniture/create'
  get 'utilities_for_furniture/:id/edit', to: 'utilities_for_furniture#edit', as: 'utilities_for_furniture_edit'
  patch 'utilities_for_furniture/:id/edit', to: 'utilities_for_furniture#update', as: 'utilities_for_furniture_update'
  delete 'utilities_for_furniture/:id/destroy', to: 'utilities_for_furniture#destroy', as: 'utilities_for_furniture_destroy'
   #rutas para furniture
  get 'furniture/index'
  get 'furniture/new'
  post 'furniture/create'
  get 'furniture/:id/edit' , to: 'furniture#edit', as: 'furniture_edit'
  patch 'furniture/:id/edit', to: 'furniture#update', as: 'furniture_update'
  delete 'furniture/:id/destroy', to: 'furniture#destroy', as: 'furniture_destroy'
  #rutas para providers
  get 'provider/index'
  get 'provider/new'
  post 'provider/create'
  get 'provider/:id/edit', to: 'provider#edit', as: 'provider_edit'
  patch 'provider/:id/update', to: 'provider#update', as: 'provider_update'
  delete 'provider/:id/destroy', to: 'provider#destroy', as: 'provider_destroy'
  #rutas para salaries
  get 'salary/index'
  get 'salary/new'
  post 'salary/create'
  get 'salary/:id/edit', to: 'salary#edit', as: 'salary_edit'
  patch 'salary/:id/update', to: 'salary#update', as: 'salary_update'
  delete 'salary/:id/destroy', to: 'salary#destroy', as: 'salary_destroy'
  #rutas de scaffold
  resources :utilities
  resources :measure_units
  resources :materials_types
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
