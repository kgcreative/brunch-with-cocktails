path = require 'path'

exports.config =
  # See http://brunch.io for documentation.
  conventions:
    assets: /app\/assets\//

  paths:
    public: 'public'
    watched: ['app', 'vendor']

  npm:
    enabled: true
    # register $ and jQuery as a global so vendor plugins can run
    globals:
     '$': 'jquery'
     'jQuery': 'jquery'

  files:
    javascripts:
      joinTo:
        # all BUT app code - 'vendor/', 'node_modules/', etc
        'js/vendor.js': /^(?!app)/
        # all code from 'src/'
        'js/app.js': /^app/

    stylesheets: joinTo: 'css/style.css'

  plugins:
    coffeescript:
      bare: true

    sass:
      mode: 'native'
      options:
        includePaths: [
          'node_modules/bourbon/core'
        , 'node_modules/bourbon-neat/core'
        , 'node_modules/normalize.css'
        , 'node_modules/font-awesome/scss'
        , 'node_modules/decanter/core'
        , 'node_modules/neat-omega/'
        ]
      # Set the precision for arithmetic operations.
      precision: 10
      # To enable embedded source maps, pass the option `sourceMapEmbed`. This is only supported in _native_ mode; Ruby Sass isn't supported.
      sourceMapEmbed: true

    postcss:
      processors:
        require('autoprefixer')(['defaults', '> 3%'])

    static:
      pathTransform: (f) -> path.relative 'pages', f
      processors: [
        require('html-brunch-static') {
          partials: /\/partials\//,
          layouts: /\/layouts\//,
          handlebars:
            enableProcessor: true,
            helpers: {
              ifEq:      (a,b,opts) -> if a is b then opts.fn(this) else opts.inverse(this)
              ifEqDebug: (a,b,opts) -> console.log "a: '" + a + "'"; console.log "b: '" + b + "'"; if a is b then opts.fn(this) else opts.inverse(this)
              log:       (msg...)   -> console.log msg
            }
        }
      ]
