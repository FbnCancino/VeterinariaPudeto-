class CreateProductos < ActiveRecord::Migration[5.0]
  def change
    create_table :productos do |t|
      t.references :proveedor, foreign_key: true
      t.string :nombre
      t.integer :codigo
      t.string :tipo
      t.integer :precio

      t.timestamps
    end
  end
end
