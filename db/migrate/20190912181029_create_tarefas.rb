class CreateTarefas < ActiveRecord::Migration
  def change
    create_table :tarefas do |t|
      t.string :title
      t.references :projeto, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
