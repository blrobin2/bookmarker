# frozen_string_literal: true

module Api
  module V1
    class UsersController < BaseController
      def create
        @user = User.new(user_params)
        return render_errors(@user.errors) unless @user.save

        render_object(@user, status: :created)
      end

      def options
        response.set_header('Allow', 'OPTIONS, POST')
      end

      private

      def user_params
        params.require(:user).permit(:email, :password)
      end
    end
  end
end
