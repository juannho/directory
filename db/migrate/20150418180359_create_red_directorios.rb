class CreateRedDirectorios < ActiveRecord::Migration
  def change
    create_table :red_directorios do |t|
      t.integer :directorio_id
      t.string :red
      t.string :link

      t.timestamps null: false
    end
  end
end
