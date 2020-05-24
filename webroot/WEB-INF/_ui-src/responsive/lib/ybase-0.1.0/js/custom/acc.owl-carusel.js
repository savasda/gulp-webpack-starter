ACC.owl = {
  _autoload: [
    "swiper",
    "swiperProducts",
    "pdpSwiperLike",
    "imageZoomPdp",
    "tabs",
  ],

  tabs: function() {
    $.tabs().init($('.customise-wrapper'));
  },

  swiperProducts: function () {
    var nextBtn = document.querySelector(".swiper-next");
    var prevBtn = document.querySelector(".swiper-prev");
    var carusel = $('.page-productDetails .swiper-container-p');
    var swiper = new Swiper(carusel, {
      loop: false,
      lazy: true,
      slidesPerView: 1,
      spaceBetween: 25,
      breakpoints: {
        640: {},
        768: {
          slidesPerView: 2,
        },
        1024: {
          slidesPerView: 3,
        },
        1440: {
          slidesPerView: 4,
        },
      },
    });

    $(document).ready(function () {
      if (nextBtn && nextBtn) {
        nextBtn.addEventListener("mouseup", () => swiper.slideNext());
        prevBtn.addEventListener("mouseup", () => swiper.slidePrev());
      }
    });
  },

  pdpSwiperLike: function () {
     var lPrevBtn = document.querySelector(".page-kitchenDetails .swiper-prev");
    var lnextBtn = document.querySelector(".page-kitchenDetails .swiper-next");
    var el = $('.page-kitchenDetails .swiper-container-p');

    var swiperLike = new Swiper(el, {

      loop: true,
      lazy: true,
      slidesPerView: 1,
      spaceBetween: 25,
      breakpoints: {
        640: {},
        768: {
          slidesPerView: 2,
        },
        1024: {
          slidesPerView: 3,
        },
        1440: {
          slidesPerView: 3,
        },
      },
    });

    $(document).ready(() => {
      if(lnextBtn && lPrevBtn) {
        lnextBtn.addEventListener("mouseup", () => swiperLike.slideNext());
        lPrevBtn.addEventListener("mouseup", () => swiperLike.slidePrev());
      }
    })

  },

  swiper: function () {
    var galleryThumbs = new Swiper(".gallery-thumbs", {
      spaceBetween: 10,
      freeMode: true,
      watchSlidesVisibility: true,
      watchSlidesProgress: true,
      direction: "vertical",
    });
    var galleryTop = new Swiper(".gallery-top", {
      spaceBetween: 10,
      navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
      },
      thumbs: {
        swiper: galleryThumbs,
      },
    });
  },

  imageZoomPdp: function() {
    var buttons = document.querySelectorAll('.js-zoomIn-slide');
    var ButtonsArr = Array.from(buttons);
    var zoom = function(e) {
      if(e.target.classList.contains('js-zoomIn-pdp')) {
        var sliderImage = e.target.offsetParent.querySelector('img');
        var title = e.target.offsetParent.querySelector('.carusel-item--name').innerHTML;
        var div = document.createElement('div');
        var content = document.createElement('div');
        var h1 = document.createElement('h2');
        h1.innerHTML = title;
        content.innerHTML = sliderImage.outerHTML;
        div.appendChild(h1);
        div.appendChild(content);
        $.magnificPopup.open({
          items: {
            src: div,
            type: 'inline'
          },
          titleSrc: 'title'
        });
      }
      if(e.target.classList.contains('js-zoomIn-pdps')) {
        var sliderImage = e.target.offsetParent.offsetParent.querySelector('img');
        var title = e.target.offsetParent.offsetParent.querySelector('.carusel-item--name').innerHTML;
        var div = document.createElement('div');
        div.innerHTML = sliderImage.outerHTML;
        div.style.minWidth = '200px';
        div.style.maxWidth = '750px';
        div.style.padding = '20px';
        ACC.colorbox.open(title ,{
          inline: false,
          html: div,
        });
      }
    };

    if(ButtonsArr.length) {
      ButtonsArr.forEach(btn => {
        btn.addEventListener('mouseup', zoom)
      });
    }
  }
};
