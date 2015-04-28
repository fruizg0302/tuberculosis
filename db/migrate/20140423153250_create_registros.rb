class CreateRegistros < ActiveRecord::Migration
  def change
    create_table :registros do |t|
      t.string :nombre
      t.string :apellido_paterno
      t.string :apellido_materno
      t.string :email
      t.string :rfc
      t.integer :nationality_id
      t.integer :profession_id
      t.integer :posgrado_id

      t.timestamps
    end
  end
end
