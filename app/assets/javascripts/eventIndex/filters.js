var btnFilter = document.getElementById('btnFilter'),
	 containerFilter = document.getElementById('container-filters')

btnFilter.addEventListener('click', function () {
	containerFilter.classList.toggle('is-open')
})
