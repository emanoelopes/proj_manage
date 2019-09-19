class AddCompletedAtToTarefas < ActiveRecord::Migration
  def change
    add_column :tarefas, :completed_at, :datetime
  end
end
