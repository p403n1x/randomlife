var navTrigger = document.getElementsByClassName('nav-trigger')[0];
var body = document.getElementsByTagName('body')[0];

const navbar = document.querySelector('.intro');

navTrigger.addEventListener('click', event => {
  body.classList.toggle('nav-open');
});


window.addEventListener('scroll', event => {
  if (window.scrollY >= 1%) {
    navbar.classList.add('intro-solid');
  } else {
    navbar.classList.remove('intro-solid');
  }
});
