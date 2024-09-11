document.getElementById('flight-inquiry-form').addEventListener('submit', function(e) {
    const departure = document.getElementById('departure').value;
    const destination = document.getElementById('destination').value;

    if (departure === '' || destination === '') {
        alert('Please fill in all fields');
        e.preventDefault();
    }
});
