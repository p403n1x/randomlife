import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ['Leaving daily decisions to the wheel of chance !'],
    typeSpeed: 80,
    loop: true
  });
}

export { loadDynamicBannerText };
