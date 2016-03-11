class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token, if: :json_request?

  class AuthenticationError < ActionController::ActionControllerError; end
      
  include ErrorHandlers

  protected

  def json_request?
    request.format.json?
  end
end
