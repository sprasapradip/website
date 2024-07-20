// Mapping of Unicode Nepali to Preeti Nepali
var unicodeToPreetiMap = {
    // Vowels
    'अ': 'a', 'आ': 'aa', 'इ': 'i', 'ई': 'ii', 'उ': 'u', 'ऊ': 'uu',
    'ऋ': 'rree', 'ए': 'e', 'ऐ': 'ai', 'ओ': 'o', 'औ': 'au', 'अं': 'am',
    'अः': 'ah',

    // Consonants
    'क': 'ka', 'ख': 'kha', 'ग': 'ga', 'घ': 'gha', 'ङ': 'nga',
    'च': 'cha', 'छ': 'chha', 'ज': 'ja', 'झ': 'jha', 'ञ': 'yna',
    'ट': 'Ta', 'ठ': 'Tha', 'ड': 'Da', 'ढ': 'Dha', 'ण': 'Na',
    'त': 'ta', 'थ': 'tha', 'द': 'da', 'ध': 'dha', 'न': 'na',
    'प': 'pa', 'फ': 'pha', 'ब': 'ba', 'भ': 'bha', 'म': 'ma',
    'य': 'ya', 'र': 'ra', 'ल': 'la', 'व': 'wa', 'श': 'sha',
    'ष': 'Sha', 'स': 'sa', 'ह': 'ha', 'ळ': 'La', 'क्ष': 'ksha',
    'त्र': 'tra', 'ज्ञ': 'jna', 'श्र': 'shra', 'द्र': 'dra',

    // Vowel signs
    'ा': 'aa', 'ि': 'i', 'ी': 'ii', 'ु': 'u', 'ू': 'uu',
    'ृ': 'rree', 'े': 'e', 'ै': 'ai', 'ो': 'o', 'ौ': 'au',
    'ं': '*', 'ः': ':', 'ँ': '**',

    // Conjunct consonants
    'क्': 'k', 'ख्': 'kh', 'ग्': 'g', 'घ्': 'gh', 'ङ्': 'ng',
    'च्': 'c', 'छ्': 'chh', 'ज्': 'j', 'झ्': 'jh', 'ञ्': 'yn',
    'ट्': 'T', 'ठ्': 'Th', 'ड्': 'D', 'ढ्': 'Dh', 'ण्': 'N',
    'त्': 't', 'थ्': 'th', 'द्': 'd', 'ध्': 'dh', 'न्': 'n',
    'प्': 'p', 'फ्': 'ph', 'ब्': 'b', 'भ्': 'bh', 'म्': 'm',
    'य्': 'y', 'र्': 'r', 'ल्': 'l', 'व्': 'v', 'श्': 'sh',
    'ष्': 'Sh', 'स्': 's', 'ह्': 'h', 'ळ्': 'L',
    
    // Independent vowel forms
    'अ': 'a', 'आ': 'aa', 'इ': 'i', 'ई': 'ii',
    'उ': 'u', 'ऊ': 'uu', 'ऋ': 'rree', 'ए': 'e',
    'ऐ': 'ai', 'ओ': 'o', 'औ': 'au',

    // Numbers
    '०': '0', '१': '1', '२': '2', '३': '3', '४': '4',
    '५': '5', '६': '6', '७': '7', '८': '8', '९': '9',

    // Special characters
    '।': '|', '॥': '||', 'ऽ': '\'', '॰': '.'
};

// Mapping of Romanized Nepali to Preeti Nepali
var romanToPreetiMap = {
    // Vowels
    'a': 'a', 'aa': 'aa', 'i': 'i', 'ii': 'ii', 'u': 'u', 'uu': 'uu',
    'e': 'e', 'ai': 'ai', 'o': 'o', 'au': 'au',

    // Consonants
    'k': 'ka', 'kh': 'kha', 'g': 'ga', 'gh': 'gha', 'ng': 'nga',
    'c': 'cha', 'chh': 'chha', 'j': 'ja', 'jh': 'jha', 'yn': 'yna',
    'T': 'Ta', 'Th': 'Tha', 'D': 'Da', 'Dh': 'Dha', 'N': 'Na',
    't': 'ta', 'th': 'tha', 'd': 'da', 'dh': 'dha', 'n': 'na',
    'p': 'pa', 'ph': 'pha', 'b': 'ba', 'bh': 'bha', 'm': 'ma',
    'y': 'ya', 'r': 'ra', 'l': 'la', 'v': 'wa', 'sh': 'sha',
    'Sh': 'Sha', 's': 'sa', 'h': 'ha', 'L': 'La', 'ksh': 'ksha',
    'tr': 'tra', 'jn': 'jna', 'shr': 'shra', 'dra': 'dra',

    // Vowel signs
    'aa': 'aa', 'i': 'i', 'ii': 'ii', 'u': 'u', 'uu': 'uu',
    'e': 'e', 'ai': 'ai', 'o': 'o', 'au': 'au',

    // Special characters
    '|': '|', '||': '||', '\'': '\'', '.': '.'
};

// Function to convert Unicode Nepali or Romanized Nepali to Preeti Nepali
function convertToPreeti(inputType) {
    var inputText = document.getElementById(inputType + '_text').value;
    var preetiText = '';

    var map = inputType === 'unicode' ? unicodeToPreetiMap : romanToPreetiMap;

    for (var i = 0; i < inputText.length; i++) {
        var char = inputText[i];
        var nextChar = inputText[i + 1];
        var combinedChar = char + (nextChar || '');

        // Check for combined characters
        if (map[combinedChar]) {
            preetiText += map[combinedChar];
            i++; // Skip the next character as it is part of the combined character
        } else if (map[char]) {
            preetiText += map[char];
        } else {
            preetiText += char; // Keep the character as it is if not found in map
        }
    }

    // Display converted text
    document.getElementById(inputType + '_output').value = preetiText;
}

// Function to copy Preeti Nepali text to clipboard
function copyPreeti(elementId) {
    var copyText = document.getElementById(elementId);
    copyText.select();
    document.execCommand("copy");
    alert("Copied the text: " + copyText.value);
}

// Function to clear input and output fields
function clearContent() {
    document.getElementById('unicode_text').value = '';
    document.getElementById('unicode_output').value = '';
    document.getElementById('roman_text').value = '';
    document.getElementById('roman_output').value = '';
}
