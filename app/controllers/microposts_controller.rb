class MicropostsController < ApplicationController

    
    def create
      @micropost=current_user.microposts.build(params[:micropost])
      if @micropost.save
        flash[:success] = "Successfully Posted"
        redirect_to current_user
      else
        flash[:error] = "Error"
        redirect_to current_user
      end
    end

    def destroy
      @micropost = Micropost.find(params[:id])
      @user = @micropost.user
      @micropost.destroy
      redirect_to @user
    end

end
