RailsAdmin.config do |config|
  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  #Excluir modelos dentro del panel de administracion++++++++

  config.excluded_models = [UtilitiesForFurniture,
    PurchaseDetail,
    MaterialForFurniture]


  #Personalizar etiquetas de navegación
  # config.model User do
  #   navigation_label 'Configuracion'
  # end

  config.model 'Salary' do
  label 'Salario' # Change the label of this model class
end
 config.model 'Employee' do
  label 'Empleados' # Change the label of this model class
end
 config.model 'Furniture' do
  label 'Muebles' # Change the label of this model class
end
 config.model 'Material' do
  label 'Materiales' # Change the label of this model class
end
 config.model 'MaterialsType' do
  label 'Tipos de Material' # Change the label of this model class
end
config.model 'Provider' do
  label 'Proveedores' # Change the label of this model class
end
config.model 'Purchase' do
  label 'Compras' # Change the label of this model class
end
config.model 'User' do
  label 'Usuarios' # Change the label of this model class
end
config.model 'Utility' do
  label 'Utilidades' # Change the label of this model class
end
config.model 'Customer' do
  label 'Clientes' # Change the label of this model class
end
config.model 'MeasureUnit' do
  label 'Unidad de medida' # Change the label of this model class
end
config.model 'HoursHistory' do
  label 'Historial de horas trabajadas' # Change the label of this model class
end
config.model 'EmployeePayment' do
  label 'Pago a Empleados' # Change the label of this model class
end

  #Cambiar el orden de los modelos en la navegación.
  config.model Employee do
    navigation_label 'Administracion'
    weight -1
  end
  config.model EmployeePayment do
    navigation_label 'Administracion'
    weight -2
  end
  config.model Salary do
    navigation_label 'Administracion'
    weight -3
  end
  config.model HoursHistory do
    navigation_label 'Administracion'
    weight -4
  end
  config.model User do
    navigation_label 'Administracion'
    weight -5
  end

  

  #El encabezado de una columna de vista de lista se puede cambiar con el método de etiqueta familiar:

  # config.model HoursHistory do
  #   list do
  #     field :id do
  #       label "Codigo"
  #     end
  #     field :created_at do
  #       label "Entrada"
  #     end
  #     field :username do
  #       label "Usuario"
  #     end
  #   end
  # end


  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
