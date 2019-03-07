class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]
  before_action :good_user?, only: [:show, :edit, :update]


	def show
	    @user = User.find(params[:id]) # Active Storage
	  end
	end
  # GET /users/1/edit
  def edit
  end

  # PATCH/PUT /users/1
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'Ton profil a été mis à jour.' }
      else
        format.html { render :edit }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:first_name, :last_name, :user_name, :description, :email)
    end

    def good_user?
      if @user != current_user
        flash[:danger] = "You do not have access to other user account"
        redirect_to root_path
      end
end
