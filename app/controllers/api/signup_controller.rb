class Api::SignupController < ApplicationController
    skip_before_filter :verify_authenticity_token, only: :create # どうやらこの記述が必要

  def create
      user = User.new(create_params)

    # エラー処理
    unless user.save # もし、userが保存できなかったら
      @error_message = [user.errors.full_messages].compact # エラーが入ってるインスタンス変数を定義
    end
  end
  
  private
  def create_params
    params.permit(:username,:email,:school,:password)
  end
  
end
