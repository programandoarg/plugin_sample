module PluginSample
  class Engine < ::Rails::Engine
    isolate_namespace PluginSample

    config.generators do |g|
      g.test_framework :rspec
    end
  end
end
