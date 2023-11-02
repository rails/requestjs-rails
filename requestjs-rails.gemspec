require_relative "lib/requestjs/version"

Gem::Specification.new do |s|
  s.name     = "requestjs-rails"
  s.version  = Requestjs::VERSION
  s.authors  = ["Marcelo Lauxen"]
  s.email    = "marcelolauxen16@gmail.com"
  s.summary  = "A tiny Fetch API wrapper that allows you to make http requests without need to handle to send the CSRF Token on every request"
  s.homepage = "https://github.com/marcelolx/requestjs-rails"
  s.license  = "MIT"

  s.add_dependency "railties", ">= 6.1.0"

  s.files = Dir["{app,config,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
end
