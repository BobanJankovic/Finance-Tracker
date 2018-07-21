class UsersController < ApplicationController
  
  def show
    @friend = User.find(params[:id])
    
  end

  def my_portfolio
    @user = current_user
    @user_stocks = current_user.stocks
    
  end

  def my_friends
    @friendships = current_user.friends
  end

  def search
    if params[:search_param].blank?
      flash.now[:danger] = "You have entered an empty search string"
    else
      @users = User.search(params[:search_param])
      #zasto je ovde if
      flash.now[:danger] = "No users matches this search cryteria" if @users.nil?
    end

    respond_to do |format|
       format.js { render partial: 'friends/result.js' }
    end
  end
  
 

end