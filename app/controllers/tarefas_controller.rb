class TarefasController < ApplicationController
	before_action :set_projeto
	before_action :set_tarefa, except: [:create]
	def create
		@tarefa = @projeto.tarefas.create(tarefa_params)
		redirect_to @projeto 
	end

	def destroy
		if @tarefa.destroy
			flash[:success] = "Tarefa foi apagada"
		else
			flash[:error] = "Tarefa nao foi apagada"
		end
		redirect_to @projeto
	end

	def complete
		@tarefa.update_attribute(:completed_at, Time.now)
		redirect_to @projeto, notice: "Tarefa concluída"
	end
	private

	def set_projeto
		@projeto = Projeto.find(params[:projeto_id])
	end

	def set_tarefa
		@tarefa = @projeto.tarefas.find(params[:id])
	end

	def tarefa_params
		params[:tarefa].permit(:content)
	end
end
