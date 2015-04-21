class CreateDirectorios < ActiveRecord::Migration
  def change
    create_table :directorios do |t|
      t.string :usuario_rut
      t.string :nombre
      t.string :descripcion
      t.integer :telefono
      t.integer :celular
      t.string :direccion
      t.string :comuna
      t.string :ciudad

      t.timestamps null: false
    end
  end
end
