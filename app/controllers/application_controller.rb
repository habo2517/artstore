class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
<<<<<<< HEAD
 def admin_required
   if !current_user.admin?
     redirect_to "/"
   end
 end
=======

  def admin_required
    if !current_user.admin?
      redirect_to "/"
    end
  end
>>>>>>> 76fee7feedb4ccc32977c74e3afc34d55731f629
end
