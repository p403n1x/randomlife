import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Random Life"],
    typeSpeed: 100,
    loop: true
  });
}

export { loadDynamicBannerText };
