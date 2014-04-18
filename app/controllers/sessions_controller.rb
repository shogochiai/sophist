# coding: utf-8
class SessionsController < ApplicationController
  def new
    redirect_to root_url if current_user
  end

  def create
    if @user = login(params[:email], params[:password], true)
      redirect_back_or_to root_url, notice: "ログインしました"
    else
      flash.now[:alert] = 'メールアドレスかパスワードが間違っています'
      render :new
    end
  end

  def destroy
    logout
    redirect_to root_url, notice: 'ログアウトしました'
  end
end
