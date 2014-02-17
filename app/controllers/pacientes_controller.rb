class PacientesController < InheritedResources::Base

	def build_resource_params
        [params.fetch(:paciente, {}).permit(:nome, :fone, :endereco, :email)]
    end
end
