class AddContentToTarefas < ActiveRecord::Migration
  def change
    add_column :tarefas, :content, :string
  end
end
