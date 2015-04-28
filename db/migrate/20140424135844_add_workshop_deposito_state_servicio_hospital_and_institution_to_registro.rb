class AddWorkshopDepositoStateServicioHospitalAndInstitutionToRegistro < ActiveRecord::Migration
  def change
    add_column :registros, :workshop_id, :integer
    add_column :registros, :no_deposito_cuenta_bancaria, :string
    add_column :registros, :state_id, :integer
    add_column :registros, :hospital_general, :boolean
    add_column :registros, :service_id, :integer
    add_column :registros, :institution_id, :integer
  end
end
