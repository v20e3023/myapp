class UsersController < ApplicationController
    
    def index
        @user = User.all.order(created_at: 'desc')
    end
    
    def _signin
        @user = User.find(params[:user_id])
    end
    
    def new
        @user = User.new
    end
    
    def create
        @user = User.new(user_params)
        if @user.save
            redirect_to posts_path
        else
            render 'new'
        end
    end
    
 private
    def user_params
        params.require(:user).permit(:signin_name, :display_name, :password, :password_confirmation)
    end

end