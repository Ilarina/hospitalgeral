class Consultation < ActiveRecord::Base
  belongs_to :medico
  belongs_to :paciente
end
