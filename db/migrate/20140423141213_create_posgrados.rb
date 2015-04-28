class CreatePosgrados < ActiveRecord::Migration
  def change
    create_table :posgrados do |t|
      t.string :posgrado

      t.timestamps
    end
  end
end
