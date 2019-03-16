module PluginSample
  class Engine < ::Rails::Engine
    isolate_namespace PluginSample

    config.generators do |g|
      g.test_framework :rspec
      g.fixture_replacement :factory_bot
      g.factory_bot dir: 'spec/factories'
    end

    # Para que las aplicaciones que usan este engine puedan acceder a las factories del engine
    initializer "sample_engine.factories", :after => "factory_bot.set_factory_paths" do
      FactoryBot.definition_file_paths << File.expand_path('../../../spec/factories', __FILE__) if defined?(FactoryBot)
    end
  end
end
