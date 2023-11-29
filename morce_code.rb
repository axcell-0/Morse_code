# Method to decode a Morse code character
def decode_char(morse_char)
  morse_code_mapping = {
    '.-'    => 'a',
    '-...'  => 'b',
    '-.-.'  => 'c',
    '-..'   => 'd',
    '.'     => 'e',
    '..-.'  => 'f',
    '--.'   => 'g',
    '....'  => 'h',
    '..'    => 'i',
    '.---'  => 'j',
    '-.-'   => 'k', 
    '.-..'  => 'l',
    '--'    => 'm', 
    '-.'    => 'n', 
    '---'   => 'o', 
    '.--.'  => 'p',
    '--.-'  => 'q', 
    '.-.'   => 'r', 
    '...'   => 's', 
    '-'     => 't',
    '..-'   => 'u', 
    '...-'  => 'v', 
    '.--'   => 'w', 
    '-..-'  => 'x',
    '-.--'  => 'y', 
    '--..'  => 'z', 
    '-----' => '0', 
    '.----' => '1',
    '..---' => '2', 
    '...--' => '3', 
    '....-' => '4', 
    '.....' => '5',
    '-....' => '6', 
    '--...' => '7', 
    '---..' => '8', 
    '----.' => '9'
  }

  morse_code_mapping[morse_char] || ''
end

def decode_word(morse_word)
  morse_word.split(' ').map { |char| decode_char(char) }.join('').upcase
end

def decode(message)
  words = message.split('   ')
  words.map { |word| decode_word(word) }.join(' ')
end
morse_char_example = ".-"
decoded_char = decode_char(morse_char_example)
puts decoded_char
morse_word_example = "-- -.--"
decoded_word = decode_word(morse_word_example)
puts decoded_word
morse_message_example = ".-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ..."
decoded_message = decode(morse_message_example)
puts decoded_message
