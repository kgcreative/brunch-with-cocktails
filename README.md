# Brunch app

This HTML5 application, built with [Brunch](http://brunch.io).

## Getting started
* Install (if you don't have them):
  * [Node.js](http://nodejs.org): `brew install node` on OS X terminal (if you don't have homebrew installed, do so via http://brew.sh/ )
  * [Brunch](http://brunch.io): Install brunch globally `npm install -g brunch` or `sudo npm install -g brunch`

* Initialize
  * Create a the directory in which you want to build the skeleton `mkdir mysite` and cd into it `cd mysite`
  * Download and initialize this instance of the brunch skeleton: `brunch new --skeleton kgcreative/brunch-with-cocktails`

* Configure:
  * If you need to add plugins or modules to this instance of brunch, you can do so via `npm install --save module`
  * Plugin and module configurations are added to brunch-config.js

* Run:
  * `brunch watch --server --port 3333` — watches the project with continuous rebuild. This will also launch HTTP server with [pushState](https://developer.mozilla.org/en-US/docs/Web/Guide/API/DOM/Manipulating_the_browser_history) at [localhost:3333](http://localhost:3333).
  * `brunch build --production` — builds minified project for production

* Learn:
  * `public/` dir is fully auto-generated and served by HTTP server.  Write your code in `app/` dir.
  * Place static files you want to be copied from `app/assets/` to `public/`.
  * [Brunch site](http://brunch.io), [Getting started guide](https://github.com/brunch/brunch-guide#readme)
  * [Bourbon](http://bourbon.io]) and [Neat](http://neat.bourbon.io/) were installed via NPM (not ruby)
  * The [Bitters](http://bitters.bourbon.io/) scaffold was imported via ruby into `css/base`. This is initial boilerplate for a nicer blank canvas. Modify these files and make them your own.
  * [Bitters](http://bitters.bourbon.io/) works along side [Normalize](http://necolas.github.io/normalize.css/), which was installed via NPM and can be updated as the project matures.