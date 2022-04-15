class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :persona
      t.string :documento
      t.date :emision
      t.date :vencimiento
      t.string :nombre
      t.string :corre
      t.string :telefono_principal
      t.string :telefono_secundario

      t.timestamps
    end
  end
end
