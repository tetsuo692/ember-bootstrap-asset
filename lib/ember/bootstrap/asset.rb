require 'rails'
require "ember/bootstrap/asset/version"
require 'ember/bootstrap/source'

module Ember
  module Bootstrap
    module Asset
      class Railtie < ::Rails::Railtie
        config.ember_bootstrap_asset = ActiveSupport::OrderedOptions.new
        initializer "ember_bootstrap_asset.configure_rails_initialization", :after => "ember_bootstrap_asset.setup", :group => :all do |app|
          if variant = app.config.ember_bootstrap_asset.variant || ::Rails.env.test?
            variant ||= :development
            tmp_path = app.root.join("tmp/ember-bootstrap-asset")
            ext = variant == :production ? ".prod.js" : ".js"
            FileUtils.mkdir_p(tmp_path)
            FileUtils.cp(::Ember::Bootstrap::Source.bundled_path_for("ember-bootstrap#{ext}"), tmp_path.join("ember-bootstrap.js"))
            app.assets.append_path(tmp_path)
          else
            warn "No ember-bootstrap.js variant was specified in your config environment."
            warn "You can set a specific variant in your application config in "
            warn "order for sprockets to locate ember_bootstrap's assets:"
            warn ""
            warn "    config.ember_bootstrap_asset.variant = :development"
            warn ""
            warn "Valid values are :development and :production"
          end
        end
      end
    end
  end
end
