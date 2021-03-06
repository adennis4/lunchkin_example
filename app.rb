require 'sinatra/base'
require 'sinatra/assetpack'
require 'coffee-script'

class App < Sinatra::Base
  register Sinatra::AssetPack

  assets do

    js :main, '/js/main.js', [
      '/js/app.js',
      '/js/shared_service.js',
      '/js/monster_ctrl.js',
      '/js/doppelganger_ctrl.js'
    ]

  end

  get '/' do
    haml :app
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

