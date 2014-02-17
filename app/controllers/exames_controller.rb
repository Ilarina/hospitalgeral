class ExamesController < InheritedResources::Base

	def build_resource_params
        [params.fetch(:exame, {}).permit(:descricao, :valor, :observacao)]
    end

end
