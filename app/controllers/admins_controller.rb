class AdminsController < ApplicationController
  include DeviseTokenAuth::Concerns::SetUserByToken

  def index
    @admins = Admin.all

    render json: @admins
  end
end