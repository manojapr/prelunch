class StaticPagesController < ApplicationController

  def home
    if signed_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def help
  end

  def about
  end

  def contact
  end

  def send_order_mail
    @user = Order.find(params[:id])

    SignupMailer.signup_email(@user).deliver()
    flash[:notice] = "email has been sent."
    redirect_to static_pages_path
  end

end
