var btnFilter = document.getElementById('btnFilter'),
	 	containerFilter = document.getElementById('container-filters'),
	 	containerEvent = document.getElementById('container-events')

btnFilter.addEventListener('click', function () {
	containerFilter.classList.toggle('is-open')
	containerEvent.classList.toggle('down')
}, true)
