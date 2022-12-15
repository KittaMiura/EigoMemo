class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
<<<<<<< HEAD
=======
  add_flash_types :success, :info, :warning, :danger
  before_action :set_current_user
  
  def set_current_user
    User.current_user = current_user # 先程定義したクラスメソッドを呼び出して、そちらに現在のcurrent_userを代入
  end
>>>>>>> develop

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :name])
  end

end
