class RequestsController < InheritedResources::Base

	def build_resource_params
        [params.fetch(:request, {}).permit(:plano, :dataexame, :dataentrega, :laudo, :consultation_id, :exame_id)]
    end

end
