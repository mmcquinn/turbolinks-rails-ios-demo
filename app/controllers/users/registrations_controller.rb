class Users::RegistrationsController < Devise::RegistrationsController
  def new
    @title = "New Account"
    build_resource({})
    respond_with resource
  end
end
