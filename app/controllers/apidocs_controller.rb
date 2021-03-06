# frozen_string_literal: true

class ApidocsController < ApplicationController
  include Swagger::Blocks

  swagger_root do
    key :swagger, '2.0'

    info do
      key :version, '1.0.0'
      key :title, 'Bookmarker API'
      key :description, 'Bookmarker API Documentation'

      contact do
        key :name, 'bennierobinson.com'
      end
    end

    key :host, 'localhost:3000'
    key :basePath, '/api/v1'
    key :consumes, ['application/json']
    key :produces, ['application/json']
    key :schemes, ['http']
  end

  SWAGGERED_CLASSES = [
    Swagger::Controllers::UsersController,
    Swagger::Controllers::OauthTokenController,
    Swagger::Models::Error,
    Swagger::Models::Meta,
    Swagger::Models::User,
    Swagger::Models::UserInput,
    Swagger::Models::OauthTokenInput,
    Swagger::Models::OauthToken,
    Swagger::Models::OauthTokenInfo,
    Swagger::Models::Unauthorized,
    self
  ].freeze

  def index
    render json: Swagger::Blocks.build_root_json(SWAGGERED_CLASSES)
  end
end
