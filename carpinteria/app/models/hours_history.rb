class HoursHistory < ApplicationRecord
  belongs_to :employee
#
# validates_datetime :created_at,
# :on_or_before => :today,
# :message => 'La fecha debe ser de hoy'


validates_time :entry_time,
:between => ['5:00am', '18:00pm'],
:message => 'Rango entre las 5 a 18 hs'

validates_time :departure_time,
:between => ['5:00am', '18:00pm'],
:message => 'Rango entre las 5 a 18 hs'

end
#<%= select_tag(:IVA, options_for_select([[5],[10]])) %>
#</p>