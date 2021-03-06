class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token
   skip_before_filter :verify_authenticity_token, :only => [:update] 

   before_action :set_cors

  def set_cors
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Request-Method'] = '*'
  end
end
