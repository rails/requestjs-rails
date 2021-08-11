APP_JS_ROOT = Rails.root.join("app/assets/javascripts")

say "Import Request.JS in existing app/assets/javascripts/application.js"
append_to_file APP_JS_ROOT.join("application.js"), %(import "@rails/request.js"\n)
