class CreateProjetos < ActiveRecord::Migration
  def change
    create_table :projetos do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
