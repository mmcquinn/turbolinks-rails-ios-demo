class PagesController < ApplicationController
  def home
    @title = "App"
  end

  def page1
    @title = "Page 1"
  end

  def page2
    @title = "Page 2"
  end

  def settings
    @title = "Settings"
    @user = current_user
  end

  def update_settings
    @user = current_user
    if @user.update_attributes(params[:user].permit(:email))
      redirect_to settings_path
    else
      @title = "Settings"
      render 'settings'
    end
  end
end
