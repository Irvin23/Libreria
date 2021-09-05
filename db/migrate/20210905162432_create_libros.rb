class CreateLibros < ActiveRecord::Migration[6.1]
  def change
    create_table :libros do |t|
      t.string :name
      t.belongs_to:genero
      t.belongs_to:autor

      t.timestamps
    end
  end
end
