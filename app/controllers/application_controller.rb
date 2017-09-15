require "application_responder"

class ApplicationController < ActionController::Base
  self.responder = ApplicationResponder
  respond_to :html

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token  
  before_action :authenticate_user!  

  before_action :verify_permission
  
  private
  
  def verify_permission
    if user_signed_in? 
      if current_user.dweller? 
         
         if params[:controller] == "messages" 
           if params[:action] == "index" || params[:action] == "new" || params[:action] == "edit"
             redirect_to root_path 
             flash[:alert] = "Usuário não tem permissão para acessar está página."           
           end
         end
         
         if params[:controller] == "dwellers" 
           if params[:action] == "index" || params[:action] == "new" || params[:action] == "edit"
             redirect_to root_path 
             flash[:alert] = "Usuário não tem permissão para acessar está página."           
           end
         end
         
      end        
  	end
  end

  def message
		@message ||= {}
	end

  helper_method :message
  
end
