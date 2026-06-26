class Api::V1::AuthController < ApplicationController
  def register
    user = User.new(user_params)
    if user.save
      token = encode_token({ user_id: user.id })
      render json: { user: { id: user.id, name: user.name, email: user.email }, token: token }, status: :created
    else
      render json: { error: user.errors.full_messages.join(', ') }, status: :unprocessable_entity
    end
  end

  def login
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      token = encode_token({ user_id: user.id })
      render json: { user: { id: user.id, name: user.name, email: user.email }, token: token }, status: :ok
    else
      render json: { error: 'Email atau password salah' }, status: :unauthorized
    end
  end

  private

  def user_params
    params.require(:auth).permit(:name, :email, :password, :password_confirmation)
  end
end
