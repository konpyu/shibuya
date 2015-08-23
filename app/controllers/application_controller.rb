class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  class ShibuyaAssets::BadRequest < StandardError; end    # 400
  class ShibuyaAssets::UnAuthorized < StandardError; end  # 401
  class ShibuyaAssets::Forbidden < StandardError; end     # 403
  class ShibuyaAssets::NotFound < StandardError; end      # 404
  class ShibuyaAssets::NotAllowed < StandardError; end    # 405
  class ShibuyaAssets::UnprocessableEntity < StandardError; end    # 422


  def current_user
    return Stuff.find_by(id: session[:id])
  end

  def authenticate!
    raise ShibuyaAssets::UnAuthorized if current_user.blank?
  end

  helper_method :current_user

end
