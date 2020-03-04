var navTrigger = document.getElementsByClassName('nav-trigger')[0];
var body = document.getElementsByTagName('body')[0];
var main = document.querySelector('main');

navTrigger.addEventListener('click', event => {
  body.classList.toggle('nav-open');
});


main.addEventListener('scroll', event => {
  const navbar = document.querySelector('.intro');
  if (main.scrollTop >= 22) {
    navbar.classList.add('intro-solid');
  }
  else {
    navbar.classList.remove('intro-solid');
  }
});


// if (window.scrollY >= window.innerHeight) {
//         navbar.classList.add('navbar-lewagon-white');
//       } else {
//         navbar.classList.remove('navbar-lewagon-white');
//       }
