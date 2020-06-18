import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Friendship has a price...", "from 5€ per hour !"],
    typeSpeed: 90,
    loop: true
  });
}

export { loadDynamicBannerText };
