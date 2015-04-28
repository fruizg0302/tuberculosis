class CreateWorkshops < ActiveRecord::Migration
  def change
    create_table :workshops do |t|
      t.string :workshop

      t.timestamps
    end
  end
end
