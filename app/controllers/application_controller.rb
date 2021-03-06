# -*- encoding : utf-8 -*-
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  require 'csv'
  protect_from_forgery with: :exception

  def check_session
    if !user_signed_in?
      redirect_to '/users/sign_in'
    end
  end
end
