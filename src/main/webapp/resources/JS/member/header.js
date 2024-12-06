document.addEventListener('DOMContentLoaded', function() {
    fetch('/header.jsp')
        .then(response => response.text())
        .then(data => {
            let headerContainer = document.createElement('div');
            headerContainer.innerHTML = data;
            document.body.insertBefore(headerContainer.firstChild, document.body.firstChild);
        });
});