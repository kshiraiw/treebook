class UserFrienshipsController < ApplicationController
	  before_action :set_user_friendship, only: [:show, :edit, :destroy]
  # GET /statuses
  # GET /statuses.json

  # GET /statuses/new
  def new
    @user_friendship = UserFriendship.new
  end

  def create
    @user_friendship = current_user.user_friendships.new(user_friendship_params)
    
    respond_to do |format|
      if @user_frienship.save
        format.html { redirect_to @user_friendship, notice: 'Status was successfully created.' }
        format.json { render :show, status: :created, location: @status }
      else
        format.html { render :new }
        format.json { render json: @user_friendship.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
  end

  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_friendship
      @user_friendship = UserFriendship.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_friendship_params
      params.require(:user_friendship).permit(:friend, :user, :user_id, :friend_id) if params[:user_friendship]
    end
end