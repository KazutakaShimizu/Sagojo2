class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]
  before_action :correct_user,only: [:edit,:update]


	def show
	end

	def edit
	end

	def update
	 	if @user.update(user_params)
	      redirect_to current_user, notice: 'ユーザー情報が更新されました'
	    else
	      render :edit
	    end
	end	

 private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
		@user=User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name, :email,:image)
    end

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_path) unless @user == current_user
    end
end
