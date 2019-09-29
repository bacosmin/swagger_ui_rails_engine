require "swagger_ui_rails_engine/engine"
require 'swagger_ui_rails_engine/engine'
require 'swagger_ui_rails_engine/version'
require 'swagger_ui_rails_engine/configuration'
require 'swagger_ui_rails_engine/defaults'
module SwaggerUiRailsEngine
  class << self
    delegate(*Configuration::OPTIONS, to: :configuration)

    def configuration
      @configuration ||= Configuration.new
    end

    def configure
      yield configuration
    end
  end
end
