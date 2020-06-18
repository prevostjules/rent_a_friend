import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  const banner = document.getElementById('banner-typed-text');
  if (banner) {
    new Typed('#banner-typed-text', {
      strings: ["Friendship has a price...", "from 5€ per hour !"],
      typeSpeed: 90,
      loop: true
    });
  };
}

export { loadDynamicBannerText };
