class FriendshipsController < ApplicationController

    def destroy
      @friend = Friendship.find(params[:id])
      @friend.destroy
      flash[:notice] = "Stock was successfully removed from portfolio"
      redirect_to my_friends_path
    end
end
