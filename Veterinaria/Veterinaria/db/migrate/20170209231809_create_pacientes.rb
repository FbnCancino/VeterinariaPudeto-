class CreatePacientes < ActiveRecord::Migration[5.0]
  def change
    create_table :pacientes do |t|
      t.references :cliente, foreign_key: true
      t.string :nombre
      t.string :sexo
      t.integer :edad
      t.string :tipo

      t.timestamps
    end
  end
end
