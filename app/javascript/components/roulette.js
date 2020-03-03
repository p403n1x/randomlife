let initRoulette = () => {

var carousel = document.querySelector('.carousel');
var infinitRot = document.querySelector('.infinitrot');

if (carousel) {
  var cells = carousel.querySelectorAll('.carousel__cell');
    let selectedIndex = carousel.dataset.choice + Math.floor(Math.random() * 10);
    var cellWidth = carousel.offsetWidth;
    var cellHeight = carousel.offsetHeight;
    var isHorizontal = true;
    var rotateFn = isHorizontal ? 'rotateY' : 'rotateX';
    var radius, theta;
    let cellCount = carousel.dataset.ucount;
    let winR = document.getElementById('winner');
    let launch = document.getElementById('launch');
    const audio = document.querySelector('audio');


    function winnerFunction() {
    if(getComputedStyle(winR).display != "none"){
      winR.style.display = "none";
    } else {
      winR.style.display = "block";
    }
  }

  function hideLaunchFunction() {
    if(getComputedStyle(launch).display != "none"){
      launch.style.display = "none";
    } else {
      launch.style.display = "initial";
    }
  }


    function stopinfiniteRotate() {
      carousel.classList.remove('infinitrot', 'aucunsens');
    }


      function sleep(ms) {
      return new Promise(resolve => setTimeout(resolve, ms));
  };

      function rotateCarousel() {
      var angle = (theta * selectedIndex * -1);
      carousel.style.transform = 'translateZ(' + -radius + 'px) ' +
      rotateFn + '(' + angle + 'deg)';
      audio.play();

      infinitRot.style.transform = 'translateZ(' + -radius + 'px) ' +
      rotateFn + '(' + angle + 'deg)';
      audio.play();

    };

   const jokerButton = document.querySelector('.joker-button');
    jokerButton.addEventListener( 'click', function() {
      hideLaunchFunction();
      stopinfiniteRotate();
      sleep(100).then(() => {
      changeCarousel();
      selectedIndex = carousel.dataset.choice;
      rotateCarousel();
      sleep(5000).then(() => {
      winnerFunction();
    });
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
        // } else {
        //   // hidden cell
        //   cell.style.opacity = 0;
        //   cell.style.transform = 'none';
        };
      };

      rotateCarousel();
    };

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
}



export { initRoulette };
