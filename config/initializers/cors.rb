Foo::Application.config.middleware.use Rack::Cors do
  allow do
    # This will allow requests from all URLs. 
    # Change to whitelist specific URLs in production
    origins '*'
    resource '*', :headers => :any, :methods => [:get, :post, :options, :put]
  end
end