# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'
#Rails.application.config.assets.precompile += %w(groundworkcss/*)
Rails.application.config.assets.precompile += %w( groundworkcss/groundwork.css )
Rails.application.config.assets.precompile += %w( groundworkcss/libs/modernizr-2.6.2.min.js )
Rails.application.config.assets.precompile += %w( groundworkcss/all.js )
Rails.application.config.assets.precompile += %w( groundworkcss/layout-a.png )
Rails.application.config.assets.precompile += %w( groundworkcss/layout-b.png )
Rails.application.config.assets.precompile += %w( groundworkcss/layout-c.png )
Rails.application.config.assets.precompile += %w( groundworkcss/example-usage.png )
Rails.application.config.assets.precompile += %w( groundworkdocs.js )
Rails.application.config.assets.precompile += %w( groundworkdocs.css )
Rails.application.config.assets.precompile += %w( groundworkcss/groundwork-core.css )
Rails.application.config.assets.precompile += %w( groundworkcss/groundwork-type.css )
Rails.application.config.assets.precompile += %w( groundworkcss/groundwork-ui.css )
Rails.application.config.assets.precompile += %w( groundworkcss/groundwork-anim.css )
Rails.application.config.assets.precompile += %w( groundworkcss/groundwork-ie.css )
Rails.application.config.assets.precompile += %w( groundworkcss/groundwork-logo.svg )
Rails.application.config.assets.precompile += %w( groundworkcss/demo/ZeroClipboard.swf )




# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
Rails.application.config.assets.precompile += %w( search.js )
