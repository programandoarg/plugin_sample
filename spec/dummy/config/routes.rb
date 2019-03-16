Rails.application.routes.draw do
  mount PluginSample::Engine => "/plugin_sample"
end
