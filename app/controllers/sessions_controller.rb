class SessionsController < ApplicationController
  skip_before_action :authorize
  def new
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path , notice: 'Goodbye'
  end

  def create
    user = User.find_by email: params[:login]
    if user && user.authenticate(parans[:password])
      session[:user_id] = 1
      redirect_to root_path, notice: "welcome!"
    else
      flash[:error] = "Wrong"
      render :new
    end
  end
end
