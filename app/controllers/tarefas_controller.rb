class TarefasController < ApplicationController
	before_action :set_projeto
	def create
		@tarefa = @projeto.tarefas.create(tarefa_params)
		redirect_to @projeto 
	end

	def destroy
		@tarefa = @projeto.tarefas.find(params[:id])
		if @tarefa.destroy
			flash[:success] = "Tarefa foi apagada"
		else
			flash[:error] = "Tarefa nao foi apagada"
		end
		redirect_to @projeto
	end
	private

	def set_projeto
		@projeto = Projeto.find(params[:projeto_id])
	end

	def tarefa_params
		params[:tarefa].permit(:content)
	end
end
