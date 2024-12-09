document.addEventListener('DOMContentLoaded', function() {
    const startDate = document.getElementById('start-date');
    const endDate = document.getElementById('end-date');
    const searchBtn = document.querySelector('.search-btn');
    const tableRows = document.querySelectorAll('.board-table tbody tr');

    // Set max date for both date inputs to today
    const today = new Date().toISOString().split('T')[0];
    startDate.max = today;
    endDate.max = today;

    // Ensure end date is not before start date
    startDate.addEventListener('change', function() {
        endDate.min = startDate.value;
    });

    searchBtn.addEventListener('click', function(e) {
        e.preventDefault();
        filterByDateRange();
    });

    function filterByDateRange() {
        const start = new Date(startDate.value);
        const end = new Date(endDate.value);

        tableRows.forEach(row => {
            const dateCell = row.querySelector('td:nth-child(3)');
            const rowDate = new Date(dateCell.textContent);

            if (rowDate >= start && rowDate <= end) {
                row.style.display = '';
            } else {
                row.style.display = 'none';
            }
        });
    }
});
