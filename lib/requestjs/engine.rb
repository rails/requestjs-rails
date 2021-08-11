module Requestjs
  class Engine < ::Rails::Engine
    initializer "requestjs.assets" do
      if Rails.application.config.respond_to?(:assets)
        Rails.application.config.assets.precompile += %w( request )
      end
    end

    initializer "requestjs.importmap" do
      if Rails.application.config.respond_to?(:importmap)
        Rails.application.config.importmap.paths.tap do |paths|
          paths.asset "@rails/request.js", path: "request"
        end
      end
    end
  end
end
