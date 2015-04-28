class Workshop < ActiveRecord::Base
  attr_accessible :workshop

  def self.decrement_attendance(taller_id)
    Workshop.find(taller_id).decrement!(:cupo,1)
  end

  def self.availability_of_group
    @wk = Workshop.where("cupo > 0").all

  end

end
