class FriendsController < ApplicationController
  before_action :friend_id, only: [:destroy]

  def index
    @friends = Friend.all
  end

  def new
    @friend = Friend.new
  end

  def create
    @friend = Friend.new(friend_params)
    if @friend.save
      redirect_to friends_path, notice: "Friend added successfully"
    else
      render :new
    end
  end

  def destroy
    if @friend.destroy
      redirect_to friends_path, alert: "Friend removed!"
    end
  end

  private
  def friend_params
    params.require(:friend).permit(:name, :email, :number, :user_id)
  end

  def friend_id
    @friend = Friend.find(params[:id])
  end
end
