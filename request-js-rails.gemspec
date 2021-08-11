require_relative "lib/requestjs/version"

Gem::Specification.new do |s|
  s.name     = "request.js-rails"
  s.version  = Requestjs::VERSION
  s.authors  = ["Marcelo Lauxen"]
  s.email    = "marcelolauxen16@gmail.com"
  s.summary  = "A tiny Fetch API wrapper that allows you to make http requests without need to handle to send the CSRF Token on every request"
  s.homepage = "https://github.com/marcelolx/request.js-rails"
  s.license  = "MIT"

  s.required_ruby_version = ">= 2.6.0"
  s.add_dependency "rails", ">= 6.0.0"

  s.files = Dir["{app,config,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
end
