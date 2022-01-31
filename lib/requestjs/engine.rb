module Requestjs
  class Engine < ::Rails::Engine
    initializer "requestjs.assets" do
      if Rails.application.config.respond_to?(:assets)
        Rails.application.config.assets.precompile += %w( rails-requestjs requestjs )
      end
    end

    initializer "requestjs.importmap" do
      if Rails.application.respond_to?(:importmap)
        Rails.application.importmap.draw do
          pin "@rails/requestjs", to: "requestjs.js"
        end
      end
    end
  end
end
