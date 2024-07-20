// Function to reverse the text in the textarea
function reverseText() {
    var unicodeTextArea = document.getElementById('unicode_text_two');
    var currentText = unicodeTextArea.value;
    var reversedText = currentText.split('').reverse().join('');
    unicodeTextArea.value = reversedText;
}

// Adding an event listener to a button for text reversal
document.addEventListener("DOMContentLoaded", function() {
    var reverseButton = document.createElement('button');
    reverseButton.textContent = 'Reverse Text';
    reverseButton.classList.add('reverse-button');
    reverseButton.addEventListener('click', function() {
        reverseText();
    });

    var formElement = document.getElementsByName('nepali')[0];
    formElement.appendChild(reverseButton);
});
