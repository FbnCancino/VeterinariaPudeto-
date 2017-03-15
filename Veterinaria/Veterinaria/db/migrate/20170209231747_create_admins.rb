class CreateAdmins < ActiveRecord::Migration[5.0]
  def change
    create_table :admins do |t|
      t.string :nombre
      t.integer :rut
      t.string :mail
      t.integer :telefono

      t.timestamps
    end
  end
end
