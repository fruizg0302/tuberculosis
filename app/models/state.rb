class State < ActiveRecord::Base
  has_many :registros
  attr_accessible :state
end
