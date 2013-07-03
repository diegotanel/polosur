require "will_paginate"
require "gravatar_image_tag"

module ConsultartUserManagement
  class Engine < ::Rails::Engine
    isolate_namespace ConsultartUserManagement

    config.generators do |g|
      g.test_framework :rspec, :fixture => false, :view_specs => false
      g.factory_girl false
      #g.fixture_replacement :factory_girl, :dir => 'spec/factories'
      g.assets false
      g.helper false
      g.integration_tool :rspec
    end

  end
end
