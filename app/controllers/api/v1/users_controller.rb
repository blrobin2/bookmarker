# frozen_string_literal: true

module Api
  module V1
    class UsersController < BaseController
      def create
        @user = User.new(user_params)
        return render json: @user.errors, status: :unprocessable_entity unless @user.save

        render json: @user, status: :created
      end

      private

      def user_params
        params.require(:user).permit(:email, :password)
      end
    end
  end
end
