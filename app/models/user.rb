class User < ActiveRecord::Base
  devise :timeoutable, :timeout_in => 15.minutes
  rolify
  rolify :before_add => :before_add_method

  def before_add_method(role)
    # do something before it gets added
  end


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body
end
