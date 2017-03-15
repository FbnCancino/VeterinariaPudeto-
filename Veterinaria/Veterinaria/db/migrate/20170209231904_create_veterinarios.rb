class CreateVeterinarios < ActiveRecord::Migration[5.0]
  def change
    create_table :veterinarios do |t|
      t.references :admin, foreign_key: true
      t.references :consulta, foreign_key: true
      t.string :nombre
      t.integer :rut
      t.integer :telefono

      t.timestamps
    end
  end
end
