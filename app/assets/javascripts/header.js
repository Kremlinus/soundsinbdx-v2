var button = document.getElementById('menu-btn');
var menu = document.getElementById('menu');
var open = false;

button.addEventListener('click', function () {
	if (open) {
		console.log('clicked');
		this.classList.add('cross');
		menu.classList.add('is-open');
		open = !open;
	} else {
		console.log('closed');
		this.classList.remove('cross');
		menu.classList.remove('is-open');
		open = !open;
	}
})
