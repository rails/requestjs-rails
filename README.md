# Request.JS for Rails

[Rails Request.JS](https://github.com/rails/request.js) encapsulates the logic to send by default some headers that are required by rails applications like the `X-CSRF-Token`.

## Installation

1. Add the `requestjs-rails` gem to your Gemfile: `gem 'requestjs-rails'`
2. Run `./bin/bundle install`.
3. Run `./bin/rails requestjs:install`

If using the asset pipeline to manage JavaScript, the last command will:

- Append `import "@rails/request.js"` to your `app/assets/javascripts/application.js` entrypoint.

Make sure you've already installed `importmap-rails` and that it's referenced before `requestjs-rails` in your Gemfile.

If using Webpacker to manage JavaScript, the last command will:

- Install the Request.JS NPM package.

## Usage

With the installation done check the documentation in the [Rails Request.JS](https://github.com/rails/request.js#how-to-use) repository.

## License

Request.JS for Rails is released under the [MIT License](https://opensource.org/licenses/MIT).
