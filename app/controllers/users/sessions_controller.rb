class Users::SessionsController < Devise::SessionsController
  def new
    @title = "Sign In"
    super
  end

  def destroy
    signed_out = (Devise.sign_out_all_scopes ? sign_out : sign_out(resource_name))
    set_flash_message! :notice, :signed_out if signed_out
    redirect_to after_sign_out_path_for(resource_name)
  end       
end
