class CreateProveedors < ActiveRecord::Migration[5.0]
  def change
    create_table :proveedors do |t|
      t.references :admin, foreign_key: true
      t.string :nombre
      t.integer :rut
      t.string :mail
      t.integer :telefono

      t.timestamps
    end
  end
end
