class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    # ここにユーザー詳細ページに必要なコードを記述
  end
end