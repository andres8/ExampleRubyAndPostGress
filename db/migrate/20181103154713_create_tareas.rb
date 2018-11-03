class CreateTareas < ActiveRecord::Migration[5.1]
  def change
    create_table :tareas do |t|
      t.references :usuario, foreign_key: true
      t.string :titulo
      t.boolean :finalizada

      t.timestamps
    end
  end
end
