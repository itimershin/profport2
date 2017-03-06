class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authorize
  include SessionsHelper

  def authorize
    redirect_to sign_in_path unless user_signed_in?
  end
end
