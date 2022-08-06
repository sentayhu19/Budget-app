class UsersController < ApplicationController
  def index
    @users = User.all
  end

  # def Show; end
end
