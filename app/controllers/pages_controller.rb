class PagesController < ApplicationController
  def home
    @title = "Home"
  end

  def page1
    @title = "Page 1"
  end

  def page2
    @title = "Page 2"
  end

  def settings
    @title = "Settings"
  end

  def update_settings
    redirect_to root_path
  end
end
