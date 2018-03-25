path = require 'path'

exports.config =
# See http://brunch.io for documentation.
  npm:
    enabled: true
    # register $ and jQuery as a global so vendor plugins can run
    # globals:
    #      '$': 'jquery'
    #      'jQuery': 'jquery'

  paths:
    watched: ['src']
    public: 'public'

  overrides:
    production:
      sourceMaps: true
      paths:
        public: 'deploy'

  files:
    javascripts:
      joinTo:
        # all BUT app code - 'vendor/', 'node_modules/', etc
        'js/vendor.js': /(?!src)/
        # all code from 'src/'
        'js/app.js': /^src/

    stylesheets: joinTo: 'css/style.css'

  plugins:
    # optimize: on

    coffeescript:
      bare: true

    babel:
      presets: ['latest']

    sass:
# use libsass
      mode: 'native'
# Add optional includes
      options:
        includePaths: [
          'node_modules/bourbon/core'
        , 'node_modules/bourbon-neat/core'
        , 'node_modules/neat-omega/core'
        , 'node_modules/decanter/core'
        , 'node_modules/normalize.css'
        , 'node_modules/font-awesome/scss'
        , 'node_modules/prismjs/themes'
        ]
# To enable embedded source maps, pass the option `sourceMapEmbed`.
# This is only supported in _native_ mode; Ruby Sass isn't supported.
      sourceMapEmbed: true
# Set the precision for arithmetic operations.
      precision: 10

    postcss:
      processors: [
        require('autoprefixer')(['last 8 versions'])
      ]

    static:
      pathTransform: (f) -> path.relative 'pages', f
      processors: [
        require('html-brunch-static') {
          partials: /partials?/,
          layouts: /layouts?/,
          handlebars:
            enableProcessor: true,
            helpers: {
              ifEq:      (a,b,opts) -> if a is b then opts.fn(this) else opts.inverse(this)
              ifEqDebug: (a,b,opts) -> console.log "a: '" + a + "'"; console.log "b: '" + b + "'"; if a is b then opts.fn(this) else opts.inverse(this)
              log:       (msg...)   -> console.log msg
            }
        }
      ]
