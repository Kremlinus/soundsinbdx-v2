var slider = tns({
  "container": "[data-slider-home]",
  "mouseDrag": true,
  "lazyload": true,
  "gutter": 40,
  "speed": 400,
  "fixedWidth": 250,
  "nav": false,
  "arrowKeys": true,
  "controlsText": ['Précédent', 'Suivant'],
  "responsive": {
     "600": {
        "fixedWidth": 350,
     },
      "1024": {
         "fixedWidth": 400,
      }
 },
});
