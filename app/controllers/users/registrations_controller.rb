class Users::RegistrationsController < Devise::RegistrationsController
  def profile

  end

  def show
    @user = User.find(params[:id])
  end

  def vote

  end
end
