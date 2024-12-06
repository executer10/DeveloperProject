document.addEventListener('DOMContentLoaded', function() {
    fetch('/header.html')
        .then(response => response.text())
        .then(data => {
            let headerContainer = document.createElement('div');
            headerContainer.innerHTML = data;
            document.body.insertBefore(headerContainer.firstChild, document.body.firstChild);
        });
});