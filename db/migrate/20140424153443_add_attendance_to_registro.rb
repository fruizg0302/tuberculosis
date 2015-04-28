class AddAttendanceToRegistro < ActiveRecord::Migration
  def change
    add_column :registros, :attendance, :boolean
  end
end
