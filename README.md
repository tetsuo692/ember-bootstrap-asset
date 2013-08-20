# Ember::Bootstrap::Asset

ember-bootstrap-asset allows you to include [ember-bootstrap](https://github.com/emberjs-addons/ember-bootstrap) into your Rails application.

## Installation

Add this line to your application's Gemfile:

    gem 'ember-bootstrap-asset'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ember-bootstrap-asset

## Usage

Add the following lines to `app/assets/javascripts/application.js` :
//#= require ember-bootstrap

Specified the variant in your app's configuration eg.=
  config.ember.variant = :production
  #config.ember_bootstrap_asset.variant = :development

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
