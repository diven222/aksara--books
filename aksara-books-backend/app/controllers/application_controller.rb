class ApplicationController < ActionController::API
  SECRET_KEY = Rails.application.secret_key_base.to_s

  def encode_token(payload)
    JWT.encode(payload, SECRET_KEY)
  end

  def decoded_token
    auth_header = request.headers['Authorization']
    if auth_header
      token = auth_header.split(' ')[1]
      begin
        JWT.decode(token, SECRET_KEY, true, algorithm: 'HS256')
      rescue JWT::DecodeError
        nil
      end
    end
  end

  def current_user
    if decoded_token
      user_id = decoded_token[0]['user_id']
      @user = User.find_by(id: user_id)
    end
  end

  def logged_in?
    !!current_user
  end

  def authorized
    render json: { message: 'Silakan login terlebih dahulu' }, status: :unauthorized unless logged_in?
  end
end
