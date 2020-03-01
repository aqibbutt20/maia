class Api::V1::UsersController < ApplicationController
  before_action :set_user_and_client, only: %i[create]

  def index
    @users = User.all
    render json: @users
  end

  def create
    if @user.nil?
      @user = User.new email: params[:email]

      if @client.users.find_or_create_by email: @user.email
        render json: {status: 200}
      else
        render json: {status: 500, message: 'Unable to create user'}
      end
    end
  end

  private
  def set_user
    @client = Client.find_by secret_key: params[:domain]
  end

end
