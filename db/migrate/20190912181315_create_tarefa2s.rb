class CreateTarefa2s < ActiveRecord::Migration
  def change
    create_table :tarefa2s do |t|
      t.string :content
      t.references :projeto, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
