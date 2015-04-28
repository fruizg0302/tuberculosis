class AddCupoToWorkshop < ActiveRecord::Migration
  def change
    add_column :workshops, :cupo, :integer
  end
end
