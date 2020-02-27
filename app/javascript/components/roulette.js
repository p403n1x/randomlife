let initRoulette = () => {

var carousel = document.querySelector('.carousel');
var cells = carousel.querySelectorAll('.carousel__cell');
  let selectedIndex = 0;
  var cellWidth = carousel.offsetWidth;
  var cellHeight = carousel.offsetHeight;
  var isHorizontal = true;
  var rotateFn = isHorizontal ? 'rotateY' : 'rotateX';
  var radius, theta;
  let cellCount = carousel.dataset.ucount;

  const times = x => f => {
  if (x > 0) {
    f()
    times (x - 1) (f)
    };
  };

    function sleep(ms) {
    return new Promise(resolve => setTimeout(resolve, ms));
};

  function rotateCarousel() {
    var angle = theta * selectedIndex * -1;
    carousel.style.transform = 'translateZ(' + -radius + 'px) ' +
    rotateFn + '(' + angle + 'deg)';
  };

  const jokerButton = document.querySelector('.joker-button');
  jokerButton.preventDefault
  jokerButton.addEventListener( 'click', function() {
    times (30) (() => {
      selectedIndex++;
      rotateCarousel();
    });
  sleep(10000).then(() => {
    selectedIndex = carousel.dataset.choice;
    rotateCarousel();
  });
});

  function changeCarousel() {
    theta = 360 / cellCount;
    var cellSize = isHorizontal ? cellWidth : cellHeight;
    radius = Math.round( ( cellSize / 2) / Math.tan( Math.PI / cellCount ) );
    for ( var i=0; i < cells.length; i++ ) {
      var cell = cells[i];
      if ( i < cellCount ) {
        // visible cell
        cell.style.opacity = 1;
        var cellAngle = theta * i;
        cell.style.transform = rotateFn + '(' + cellAngle + 'deg) translateZ(' + radius + 'px)';
      } else {
        // hidden cell
        cell.style.opacity = 0;
        cell.style.transform = 'none';
      }
    }

    rotateCarousel();
  }

  var orientationRadios = document.querySelectorAll('input[name="orientation"]');
  ( function() {
    for ( var i=0; i < orientationRadios.length; i++ ) {
      var radio = orientationRadios[i];
      radio.addEventListener( 'change', onOrientationChange );
    }
  })();

  function onOrientationChange() {
    var checkedRadio = document.querySelector('input[name="orientation"]:checked');
    isHorizontal = checkedRadio.value == 'horizontal';
    rotateFn = isHorizontal ? 'rotateY' : 'rotateX';
    changeCarousel();
  }

  // set initials
  onOrientationChange();

}

export { initRoulette };
