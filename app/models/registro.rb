class Registro < ActiveRecord::Base

  belongs_to :state
  attr_accessible :apellido_materno, :apellido_paterno, :email, :nationality_id, :nombre, :posgrado_id, :profession_id, :rfc, :workshop_id, :no_deposito_cuenta_bancaria,:state_id, :hospital_general, :service_id, :institution_id, :attendance, :user_id, :otro

  validates_presence_of :nombre, :apellido_paterno, :apellido_materno, :rfc, :email, :nationality_id, :profession_id, :no_deposito_cuenta_bancaria, :message => "No puede ir vacio"


  def self.usuario_actual (user_id)
    Registro.where("user_id = ?", user_id)
  end

end
