class Projeto < ActiveRecord::Base
	has_many :tarefas2
	has_many :tarefas
end
