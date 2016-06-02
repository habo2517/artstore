class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
<<<<<<< HEAD
 def admin?
   is_admin
 end

  def to_admin
    self.update_columns(is_admin: true)
  end

  def to_normal
    self.update_columns(is_admin: false)
  end

=======

  def admin?
    is_admin
  end
>>>>>>> 76fee7feedb4ccc32977c74e3afc34d55731f629
end
