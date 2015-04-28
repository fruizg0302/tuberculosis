class CreateProfessions < ActiveRecord::Migration
  def change
    create_table :professions do |t|
      t.string :profession

      t.timestamps
    end
  end
end
