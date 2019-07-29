class ApplicationController < ActionController::Base
  respond_to :html, :json

  def after_sign_in_path_for(resource)
    stored_location_for(resource) || user_index_path
  end

end
