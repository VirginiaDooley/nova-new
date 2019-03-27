class UsersController < ApplicationController
  # before_action :authenticate_user!

  def new
    @user = User.new(user_params)
  end

  def create
    @user = User.new(user_params)
    if @user.email_domain == @organisation.website_domain
      @user.organisation.build(user_params)
      @user.save
      redirect to new_user_session_path
    else
    #present user with option to create an org
    redirect to new_user_session_path
    end
  end

  def user_params
    params.require(:user).permit(:email, :organisation_id)
  end

end
