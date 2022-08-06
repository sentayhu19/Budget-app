class SplashsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  def index; end

  # def Show
  #   # show
  # end
end
