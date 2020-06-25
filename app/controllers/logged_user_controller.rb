class LoggedUserController < ApplicationController
  before_action :require_login

  def index
    @currencies = current_user.user_currencies
    @id = current_user.id
  end

  private

  def require_login
    unless current_user
      redirect_to new_user_session_url
    end
  end
end
