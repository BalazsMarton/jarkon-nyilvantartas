# Prevent load-order problems in case openproject-plugins is listed after a plugin in the Gemfile
# or not at all
require 'open_project/plugins'

module OpenProject::Nyilvantartas
  class Engine < ::Rails::Engine
    engine_name :openproject_nyilvantartas

    include OpenProject::Plugins::ActsAsOpEngine

    register 'openproject-nyilvantartas',
             :author_url => 'https://openproject.org',
             :requires_openproject => '>= 6.0.0'

    #initializer 'catalog.register_hooks' do
    #  require 'open_project/catalog/hooks'
    #end

    initializer 'catalog.homescreen_blocks' do
      OpenProject::Static::Homescreen.manage :blocks do |blocks|
        blocks.push(
          { partial: 'catalog_homescreen_block', if: Proc.new { true } }
        )
      end
    end

  end
end
