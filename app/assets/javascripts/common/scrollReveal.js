window.sr = Scroll();
sr.('.', {
   origin: 'top',
   duration: 500,
   delay: 2,
   reverse: true,
   viewFactor: 0.5,
   easing: 'ease-out'
});

sr.('.events-cards', {
   origin: 'top',
   duration: 500,
   delay: 2,
   reverse: true,
   viewFactor: -0.5,
   easing: 'ease-out'
});
