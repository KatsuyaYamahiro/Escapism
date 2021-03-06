# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# 以下の一行は"*.css"を使うと$em-baseが未定義っていうエラーが出る（未解決）
# Rails.application.config.assets.precompile += %w( users.js users.css )
# 以下ですべてのアセットをプリコンパル(参考：Rails Guide)
Rails.application.config.assets.precompile << Proc.new do |path|
  if path =~ /\.(css|js)\z/
    full_path = Rails.application.assets.resolve(path)
    app_assets_path = Rails.root.join('app', 'assets').to_path
    if full_path.starts_with? app_assets_path
      true
    else
      false
    end
  else
    false
  end
end