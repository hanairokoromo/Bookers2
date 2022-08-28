class UserSessionsController < ApplicationController
    
    def create
      @user = login(params[:name], params[:password])
      if @user
        redirect_back_or_to root_path, success: t('.create.success')
      else
        flash.now[:danger] = t('.create.fail')
        render :new
      end
    end

end
