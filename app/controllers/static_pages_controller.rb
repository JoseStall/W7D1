class StaticPagesController < ApplicationController
  def home
  end

  def index
  	@users = User.all
  	p @users
  end
end
