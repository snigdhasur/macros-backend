class Api::V1::AuthController < ApplicationController

  def create
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      payload = { user_id: user.id}
      token = issue_token(payload)
      render json: {user: user, jwt: token, meals: user.meals}
      # a user exists and I can authenticate a user so successs
    else
      render json: {response: "could not validate user"}
    end
  end
end