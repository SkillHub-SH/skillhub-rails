class MembersController < ApplicationController
  before_action :authenticate_developer!

  def show
    render json: { message: 'If you can see this, you are logged in!' }
  end
end