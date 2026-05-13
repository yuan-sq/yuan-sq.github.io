const photos = Array.from({ length: 36 }, (_, index) => {
  const number = String(index + 1).padStart(2, '0');
  return {
    src: `photos/album-${number}.jpg`,
    title: `Photo ${number}`,
  };
});

(function () {
  const gallery = document.getElementById('gallery');
  if (!gallery) return;

  let current = 0;

  gallery.innerHTML = `
    <section class="stage" aria-label="Photo viewer">
      <button class="nav-button nav-button--prev" type="button" aria-label="Previous photo">
        <span aria-hidden="true">‹</span>
      </button>
      <figure class="photo-frame">
        <img id="activePhoto" src="" alt="">
      </figure>
      <button class="nav-button nav-button--next" type="button" aria-label="Next photo">
        <span aria-hidden="true">›</span>
      </button>
    </section>
    <div class="photo-meta">
      <span id="photoCounter"></span>
    </div>
    <div class="dock" role="list" aria-label="Photo thumbnails"></div>
  `;

  const activePhoto = document.getElementById('activePhoto');
  const photoCounter = document.getElementById('photoCounter');
  const dock = gallery.querySelector('.dock');
  const previousButton = gallery.querySelector('.nav-button--prev');
  const nextButton = gallery.querySelector('.nav-button--next');

  photos.forEach((photo, index) => {
    const button = document.createElement('button');
    button.className = 'dock-item';
    button.type = 'button';
    button.setAttribute('role', 'listitem');
    button.setAttribute('aria-label', `Show ${photo.title}`);
    button.innerHTML = `<img src="${photo.src}" alt="">`;
    button.addEventListener('click', () => showPhoto(index));
    dock.appendChild(button);
  });

  function showPhoto(index) {
    current = (index + photos.length) % photos.length;
    const photo = photos[current];

    activePhoto.classList.remove('is-loaded');
    activePhoto.onload = () => activePhoto.classList.add('is-loaded');
    activePhoto.src = photo.src;
    activePhoto.alt = photo.title;
    photoCounter.textContent = `${current + 1} / ${photos.length}`;

    [...dock.children].forEach((item, itemIndex) => {
      item.classList.toggle('is-active', itemIndex === current);
      item.setAttribute('aria-current', itemIndex === current ? 'true' : 'false');
    });
  }

  function move(step) {
    showPhoto(current + step);
  }

  previousButton.addEventListener('click', () => move(-1));
  nextButton.addEventListener('click', () => move(1));

  window.addEventListener('keydown', (event) => {
    if (event.key === 'ArrowLeft') move(-1);
    if (event.key === 'ArrowRight') move(1);
  });

  showPhoto(0);
})();
