def run_requestjs_install_template(path) 
  system "#{RbConfig.ruby} ./bin/rails app:template LOCATION=#{File.expand_path("../install/#{path}.rb",  __dir__)}"
end

namespace :requestjs do
  desc "Install Request.JS into the app"
  task :install do
    if defined?(Webpacker::Engine)
      Rake::Task["requestjs:install:webpacker"].invoke
    elsif defined?(Importmap)
      Rake::Task["requestjs:install:asset_pipeline"].invoke
    else
      puts "You must either be running Webpacker or importmap-rails to use this gem."
    end
  end

  namespace :install do
    desc "Install Request.JS on the app with the asset pipeline"
    task :asset_pipeline do
      run_requestjs_install_template "requestjs_with_asset_pipeline"
    end

    desc "Install Request.JS on the app with webpacker"
    task :webpacker do
      run_requestjs_install_template "requestjs_with_webpacker"
    end
  end
end
