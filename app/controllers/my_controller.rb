# coding: utf-8
class MyController < ActionController::Base
  protect_from_forgery
  after_action :set_return_to_url

  protected

  def is_admin?
    current_user && current_user.type == 'Admin'
  end

  def admin_required
    redirect_to login_url, alert: '管理者権限が必要です' unless is_admin?
  end

  def not_authenticated
    redirect_to login_url, alert: 'ログインしてください'
  end

  def set_return_to_url
    session[:return_to_url] = request.url unless current_user
  end
end
