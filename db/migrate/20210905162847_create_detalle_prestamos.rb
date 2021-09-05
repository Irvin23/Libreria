class CreateDetallePrestamos < ActiveRecord::Migration[6.1]
  def change
    create_table :detalle_prestamos do |t|
      t.integer :state
      t.datetime :returndate , :null => true
      t.belongs_to:usuario
      t.belongs_to:libro

      t.timestamps
    end
  end
end
