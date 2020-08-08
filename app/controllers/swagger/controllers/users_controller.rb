# frozen_string_literal: true

module Swagger
  module Controllers
    class UsersController
      include Swagger::Blocks

      swagger_path '/users' do
        operation :post do
          key :description, 'Creates a new user in the system'
          key :tags, %w[user]

          parameter do
            key :name, :user
            key :in, :body
            key :description, 'Email and password information of new user'
            key :required, true
            schema do
              key :'$ref', :UserInput
            end
          end
          response 201 do
            key :description, 'User response'
            schema do
              key :'$ref', :User
            end
          end
        end
      end
    end
  end
end
