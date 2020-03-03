var navTrigger = document.getElementsByClassName('nav-trigger')[0];
var body = document.getElementsByTagName('body')[0];

navTrigger.addEventListener('click', event => {
  body.classList.toggle('nav-open');
});
