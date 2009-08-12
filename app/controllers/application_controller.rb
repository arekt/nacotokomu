# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password

  layout 'standard'
  USER_ID, PASSWORD = "arek", "enigmatyczne"
 
   # Require authentication only for edit and delete operation
  before_filter :authenticate, :only => [ :edit, :new , :destroy ]


  private
  def authenticate
      authenticate_or_request_with_http_basic do |id, password| 
          id == USER_ID && password == PASSWORD
      end
  end
end
