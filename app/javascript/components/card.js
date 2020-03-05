const cards = document.querySelectorAll('.card-anim')

function cardSlide() {
  cards.forEach(card => {
    card.addEventListener('click', event => {
      // card.queryselector('.card-anim-body').style.display='block';
      card.lastElementChild.classList.toggle('card-anim-body');

    });
  })
};


export { cardSlide };
