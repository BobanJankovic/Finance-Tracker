class FriendshipsController < ApplicationController

    def destroy
      @friend = current_user.friendships.where(friend_id: params[:id]).first
      @friend.destroy
      flash[:notice] = "Friend was removed successfully"
      redirect_to my_friends_path
    end
    
end
