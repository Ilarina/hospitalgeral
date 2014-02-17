class MedicosController < InheritedResources::Base

	def build_resource_params
        [params.fetch(:medico, {}).permit(:nome, :fone, :endereco, :email, :crm)]
    end
end
