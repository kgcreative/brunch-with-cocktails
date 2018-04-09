'use strict';

document.addEventListener('DOMContentLoaded', function() {

  // require('./a11yNav');
  // Conditional Breakpoint helper
  if ((window.location.hostname.indexOf("localhost") > -1) || (window.location.hostname.indexOf("dev") > -1) || (window.location.hostname.indexOf("codepen") > -1)) {

  let bodyElement = document.querySelector('body');

  bodyElement.insertAdjacentHTML('beforeend', `<aside id="breakpoint-helper" tabindex="-1" aria-hidden="true"></aside>`);
  console.log('%c ✔ breakpoint helper', 'color: green');
  }

  console.log('%c ✔ Initialized app', 'color: green');
});
