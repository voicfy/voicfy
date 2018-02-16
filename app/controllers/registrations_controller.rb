class RegistationsController < Devise::RegistationsController

  protected

  def after_sign_up_path_for(resource)
    '/subscribers/new/'
  end
end