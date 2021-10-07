APP_JS_ROOT = Rails.root.join("app/assets/javascripts")
APP_JS_PATH = APP_JS_ROOT.exist? ? APP_JS_ROOT : Rails.root.join("app/javascript")

if !APP_JS_PATH.exist?
  create_file Rails.root.join("app/javascript").join("application.js")
end

say "Import Request.JS in existing #{APP_JS_PATH}"
append_to_file APP_JS_PATH.join("application.js"), %(import "@rails/request.js"\n)
