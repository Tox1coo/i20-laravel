document.querySelectorAll('.slider__item')[0].classList.add('slider__item--active')
document.querySelector('.slider__list').addEventListener('mouseover', setActivePreview);

function setActivePreview(event) {
	if (event.target.getAttribute('src')) {
		document.querySelector('.preview__item').src = event.target.getAttribute('src')
		const beforeItemSlide = document.querySelector('.slider__item--active');

		beforeItemSlide.classList.remove('slider__item--active');

		event.target.classList.add('slider__item--active')
	}
}
