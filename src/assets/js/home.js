'use strict';
(function(win, doc) {

  var scrolled, background;

  win.addEventListener('scroll', function (event) {
    scrolled = win.pageYOffset;
    background = doc.querySelector('.background'); console.log(background);
    background.getElementsByClassName.top = - (scrolled * 0.2) + 'px';
  });

}(window, window.document));
