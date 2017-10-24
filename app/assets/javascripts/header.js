var button = document.getElementById('menu-btn'),
		menu = document.getElementById('menu')

button.addEventListener('click', function () {
	this.classList.toggle('cross')
	menu.classList.toggle('is-open')
})
