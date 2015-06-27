class UsersController < ApplicationController
  expose(:user) { current_user }
  before_action :authenticate_user!

  def show
  end
end
