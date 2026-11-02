class UsersController < ApplicationController


private
    def secure_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation, :avatar)

    end

    def set_user
      @user =  User.friendly.find(params[:id])
    end

    def needs_password?(user, params)
      params[:password].present?
    end
end
