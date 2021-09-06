class CreateInventarios < ActiveRecord::Migration[6.1]
  def change
    create_table :inventarios do |t|
      t.integer :cantidad
      t.belongs_to :libro, null: false, foreign_key: true

      t.timestamps
    end
  end
end
