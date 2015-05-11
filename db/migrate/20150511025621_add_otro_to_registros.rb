class AddOtroToRegistros < ActiveRecord::Migration
  def change
    add_column :registros, :otro, :string
  end
end
