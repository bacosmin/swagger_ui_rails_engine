$:.push File.expand_path('lib', __dir__)

# Maintain your gem's version:
require 'swagger_ui_rails_engine/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = 'swagger_ui_rails_engine'
  spec.version     = SwaggerUiRailsEngine::VERSION
  spec.authors     = ['Cosmin Barbu']
  spec.email       = ['bacosmin@gmail.com']
  spec.homepage    = 'https://github.com/bacosmin/swagger_ui_rails_engine'
  spec.summary     = 'Wrapper over swagger ui'
  spec.description = 'Wrapper over swagger ui'
  spec.license     = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata['allowed_push_host'] = ': Set to \'http://mygemserver.com\''
  # else
  #   raise 'RubyGems 2.0 or newer is required to protect against ' \
  #     'public gem pushes.'
  # end

  spec.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  spec.add_runtime_dependency 'rails', '>= 4.2', '< 7'
end
