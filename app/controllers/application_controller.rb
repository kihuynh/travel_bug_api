class ApplicationController < ActionController::API
  include Response
  include ActionController::HttpAuthentication::Token::ControllerMethods
  
  rescue_from ActiveRecord::RecordNotFound do |exception|
    json_response({ message: exception.message }, :not_found)
  end
end
