module SwaggerUiRailsEngine
  class SwaggerDocsController < SwaggerUiRailsEngine::ApplicationController
    layout 'swagger_ui_rails_engine/layouts/swagger'
    include SwaggerUiRailsEngine::ConfigParser
    before_action :set_configs

    def oauth2
    end

    def index

      redirect_to single_swagger_doc_path
    end

    def show

      @single_doc_url = single_doc_url? || single_doc_url_hash?
      @swagger_url    = @swagger_url[params[:id].to_sym] unless single_doc_url?
    end


    private

    def single_doc_url?
      @swagger_url.is_a?(String)
    end

    def single_doc_url_hash?
      @swagger_url.is_a?(Hash) && @swagger_url.size.eql?(1)
    end

    def set_configs
      @swagger_url = SwaggerUiRailsEngine.configuration.swagger_url
    end
  end
end
