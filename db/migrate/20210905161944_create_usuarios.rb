class CreateUsuarios < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.references :rol, null: false, foreign_key: true
      t.string :name
      t.string :lastname

      t.timestamps
    end
  end
end
