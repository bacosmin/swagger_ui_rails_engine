[![Gem Version](https://badge.fury.io/rb/swagger_ui_rails_engine.svg)](https://badge.fury.io/rb/swagger_ui_rails_engine)

# SwaggerUiRailsEngine
Short description and motivation.

## Usage
How to use my plugin.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'swagger_ui_rails_engine'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install swagger_ui_rails_engine
```

## Usage

### Mount

Add to your `config/routes.rb`

```
mount SwaggerUiRailsEngine::Engine, at: "/api_docs"
```
 
### Initialize

#### Versioned API documentations

Set the path of your json/yaml versioned documentations in an initializer:

```
# config/initializers/swagger_ui_engine.rb

SwaggerUiRailsEngine.configure do |config|
  config.swagger_url =  'api/v1/swagger.yaml'
end
```
    
## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
