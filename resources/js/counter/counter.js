const counterInput = document.querySelector('.counter__input');

document.querySelector('.counter').addEventListener('click', (e) => counterProduct(e.target, counterInput));

counterInput.addEventListener('input', (e) => changeCounterInput(e.target))
counterInput.addEventListener('change', (event) => {
	if (event.target.value === '') event.target.value = 1
})


function counterProduct(counterElement, input) {
	if (counterElement.tagName === 'BUTTON') {
		if (counterElement.getAttribute('data-minus') !== null && input.value != 1) {
			input.value = --input.value;
		}
		if (counterElement.getAttribute('data-plus') !== null) {
			input.value = ++input.value;
		}
	}
}

function changeCounterInput(inputCounter) {
	if (inputCounter.value.match(/\d.\d/) || inputCounter.value.match(/.\d/)) inputCounter.value = Math.floor(inputCounter.value)
	if (inputCounter.value.match(/-\d/) || inputCounter.value == 0) inputCounter.value = 1
}

