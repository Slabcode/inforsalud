# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )

Rails.application.config.assets.precompile += %w( statics.css )
Rails.application.config.assets.precompile += %w( admins.css )
Rails.application.config.assets.precompile += %w( administration.css )
Rails.application.config.assets.precompile += %w( franchises.css )
Rails.application.config.assets.precompile += %w( carrers.css )

Rails.application.config.assets.precompile += %w( careers.js )
