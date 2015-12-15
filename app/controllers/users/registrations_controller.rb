class Users::RegistrationsController < Devise::RegistrationsController
  def profile

  end

  def show
    @user = User.find(params[:id])
  end

  def vote
    @rated_user = User.find(params[:user_id])
    @rated_user.renter_number_ratings = params[:score]
    @rated_user.save
    redirect_to request.referer
  end
end
