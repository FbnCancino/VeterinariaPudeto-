class CreateConsulta < ActiveRecord::Migration[5.0]
  def change
    create_table :consulta do |t|
      t.references :paciente, foreign_key: true
      t.string :sintomas
      t.string :diagnostico
      t.date :fecha_llegada
      t.date :fecha_salida

      t.timestamps
    end
  end
end
