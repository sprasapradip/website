function convertToPreeti() {
    var unicodeText = document.getElementById('unicode_text_two').value;
    var convertedText = convertUnicodeToPreeti(unicodeText);
    document.getElementById('legacy_text_two').value = convertedText;
}


function convertromanizeToPreeti(unicodeText) {
    // Conversion logic example
    // Add your own conversion logic here
    var romanizeToPreetiMap = {
'a': 'ा', 'aa': 'ा', 'i': 'ि', 'ii': 'ी', 'u': 'ु', 'uu': 'ू',
    'e': 'े', 'ai': 'ै', 'o': 'ो', 'au': 'ौ',
    'k': 'क्', 'ka': 'क', 'kaa': 'का', 'ki': 'कि', 'kii': 'की', 'ku': 'कु',
    'kuu': 'कू', 'ke': 'के', 'kai': 'कै', 'ko': 'को', 'kau': 'कौ',
    'kh': 'ख्', 'kha': 'ख', 'khaa': 'खा', 'khi': 'खि', 'khii': 'खी', 'khu': 'खु',
    'khoo': 'खू', 'khe': 'खे', 'khai': 'खै', 'kho': 'खो', 'khau': 'खौ',
    'g': 'ग्', 'ga': 'ग', 'gaa': 'गा', 'gi': 'गि', 'gii': 'गी', 'gu': 'गु',
    'guu': 'गू', 'ge': 'गे', 'gai': 'गै', 'go': 'गो', 'gau': 'गौ',
    'ng': 'ङ्', 'nga': 'ङ', 'ngaa': 'ङा', 'ngi': 'ङि', 'ngii': 'ङी', 'ngu': 'ङु',
    'nguu': 'ङू', 'nge': 'ङे', 'ngai': 'ङै', 'ngo': 'ङो', 'ngau': 'ङौ',
    'ch': 'च्', 'cha': 'च', 'chaa': 'चा', 'chi': 'चि', 'chii': 'ची', 'chu': 'चु',
    'chuu': 'चू', 'che': 'चे', 'chai': 'चै', 'cho': 'चो', 'chau': 'चौ',
    'c': 'च्', 'ca': 'च', 'caa': 'चा', 'ci': 'चि', 'cii': 'ची', 'cu': 'चु',
    'cuu': 'चू', 'ce': 'चे', 'cai': 'चै', 'co': 'चो', 'cau': 'चौ',
    'jh': 'झ्', 'jha': 'झ', 'jhaa': 'झा', 'jhi': 'झि', 'jhii': 'झी', 'jhu': 'झु',
    'jhuu': 'झू', 'jhe': 'झे', 'jhai': 'झै', 'jho': 'झो', 'jhau': 'झौ',
    'j': 'ज्', 'ja': 'ज', 'jaa': 'जा', 'ji': 'जि', 'jii': 'जी', 'ju': 'जु',
    'juu': 'जू', 'je': 'जे', 'jai': 'जै', 'jo': 'जो', 'jau': 'जौ',
    'n': 'न्', 'na': 'न', 'naa': 'ना', 'ni': 'नि', 'nii': 'नी', 'nu': 'नु',
    'nuu': 'नू', 'ne': 'ने', 'nai': 'नै', 'no': 'नो', 'nau': 'नौ',
    't': 'त्', 'ta': 'त', 'taa': 'ता', 'ti': 'ति', 'tii': 'ती', 'tu': 'तु',
    'tuu': 'तू', 'te': 'ते', 'tai': 'तै', 'to': 'तो', 'tau': 'तौ',
    'th': 'थ्', 'tha': 'थ', 'thaa': 'था', 'thi': 'थि', 'thii': 'थी', 'thu': 'थु',
    'thuu': 'थू', 'the': 'थे', 'thai': 'थै', 'tho': 'थो', 'thau': 'थौ',
    'd': 'द्', 'da': 'द', 'daa': 'दा', 'di': 'दि', 'dii': 'दी', 'du': 'दु',
    'duu': 'दू', 'de': 'दे', 'dai': 'दै', 'do': 'दो', 'dau': 'दौ',
    'dh': 'ध्', 'dha': 'ध', 'dhaa': 'धा', 'dhi': 'धि', 'dhii': 'धी', 'dhu': 'धु',
    'dhuu': 'धू', 'dhe': 'धे', 'dhai': 'धै', 'dho': 'धो', 'dhau': 'धौ',
    'n': 'न्', 'na': 'न', 'naa': 'ना', 'ni': 'नि', 'nii': 'नी', 'nu': 'नु',
    'nuu': 'नू', 'ne': 'ने', 'nai': 'नै', 'no': 'नो', 'nau': 'नौ',
    'p': 'प्', 'pa': 'प', 'paa': 'पा', 'pi': 'पि', 'pii': 'पी', 'pu': 'पु',
    'puu': 'पू', 'pe': 'पे', 'pai': 'पै', 'po': 'पो', 'pau': 'पौ',
    'ph': 'फ्', 'pha': 'फ', 'phaa': 'फा', 'phi': 'फि', 'phii': 'फी', 'phu': 'फु',
    'phuu': 'फू', 'phe': 'फे', 'phai': 'फै', 'pho': 'फो', 'phau': 'फौ',
    'b': 'ब्', 'ba': 'ब', 'baa': 'बा', 'bi': 'बि', 'bii': 'बी', 'bu': 'बु',
    'buu': 'बू', 'be': 'बे', 'bai': 'बै', 'bo': 'बो', 'bau': 'बौ',
    'bh': 'भ्', 'bha': 'भ', 'bhaa': 'भा', 'bhi': 'भि', 'bhii': 'भी', 'bhu': 'भु',
    'bhuu': 'भू', 'bhe': 'भे', 'bhai': 'भै', 'bho': 'भो', 'bhau': 'भौ',
    'm': 'म्', 'ma': 'म', 'maa': 'मा', 'mi': 'मि', 'mii': 'मी', 'mu': 'मु',
    'muu': 'मू', 'me': 'मे', 'mai': 'मै', 'mo': 'मो', 'mau': 'मौ',
    'y': 'य्', 'ya': 'य', 'yaa': 'या', 'yi': 'यि', 'yii': 'यी', 'yu': 'यु',
    'yuu': 'यू', 'ye': 'ये',



function convertUnicodeToPreeti(unicodeText) {
    // Conversion logic example
    // Add your own conversion logic here
    var conversionMap = {
        // Vowels
        'अ': 'a', 'आ': 'aa', 'इ': 'i', 'ई': 'ii',
        'उ': 'u', 'ऊ': 'uu', 'ऋ': 'rree', 'ए': 'e',
        'ऐ': 'ai', 'ओ': 'o', 'औ': 'au', 'अं': 'am',
        'अः': 'ah',
    
        // Consonants
        'क': 'ka', 'ख': 'kha', 'ग': 'ga', 'घ': 'gha', 'ङ': 'nga',
        'च': 'cha', 'छ': 'chha', 'ज': 'ja', 'झ': 'jha', 'ञ': 'yn',
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
        'क्ष्': 'ksh', 'त्र्': 'tr', 'ज्ञ्': 'jn', 'श्र्': 'shr',
    
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
    
    // Example combined characters (to be added if necessary)
    // 'क्‍': 'k', 'ख्‍': 'kh', 'ग्‍': 'g', ...
    // Additional characters and their Preeti equivalents can be added here as needed.
};

var preetiText = '';
for (var i = 0; i < unicodeText.length; i++) {
    var char = unicodeText[i];
    var nextChar = unicodeText[i + 1] || '';
    var combinedChar = char + nextChar;

    if (conversionMap[combinedChar]) {
        preetiText += conversionMap[combinedChar];
        i++; // Skip the next character as it is already used in combined character
    } else {
        preetiText += conversionMap[char] || char;
    }
}
return preetiText;
function copyPreeti(event) {
var copyText = document.getElementById("legacy_text_two");
copyText.select();
document.execCommand("copy");
alert("Copied the text: " + copyText.value);
}

function clearContent() {
document.getElementById('unicode_text_two').value = '';
document.getElementById('legacy_text_two').value = '';
}