class CreateBoleta < ActiveRecord::Migration[5.0]
  def change
    create_table :boleta do |t|
      t.references :proveedor, foreign_key: true
      t.references :admin, foreign_key: true
      t.references :cliente, foreign_key: true
      t.references :consulta, foreign_key: true
      t.integer :costo
      t.date :fecha
      t.time :hora

      t.timestamps
    end
  end
end
