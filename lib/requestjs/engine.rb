module Requestjs
  class Engine < ::Rails::Engine
    initializer "requestjs.assets" do
      if Rails.application.config.respond_to?(:assets)
        Rails.application.config.assets.precompile += %w( rails-requestjs )
      end
    end

    initializer "requestjs.importmap" do
      if Rails.application.respond_to?(:importmap)
        Rails.application.importmap.draw do
          pin "@rails/request.js", to: "rails-requestjs"
        end
      end
    end
  end
end
