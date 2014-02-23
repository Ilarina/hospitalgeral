class ConsultationsController < InheritedResources::Base
	def build_resource_params
        [params.fetch(:consultation, {}).permit(:data, :hora, :medico_id, :paciente_id)]
    end
end
