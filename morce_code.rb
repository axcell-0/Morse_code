# frozen_string_literal: true

MORSE_CODE_MAPPING = {
  '.-' => 'a',
  '-...' => 'b',
  '-.-.' => 'c',
  '-..' => 'd',
  '.' => 'e',
  '..-.' => 'f',
  '--.' => 'g',
  '....' => 'h',
  '..' => 'i',
  '.---' => 'j',
  '-.-' => 'k',
  '.-..' => 'l',
  '--' => 'm',
  '-.' => 'n',
  '---' => 'o',
  '.--.' => 'p',
  '--.-' => 'q',
  '.-.' => 'r',
  '...' => 's',
  '-' => 't',
  '..-' => 'u',
  '...-' => 'v',
  '.--' => 'w',
  '-..-' => 'x',
  '-.--' => 'y',
  '--..' => 'z',
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
}.freeze

def decode_morse_char(morse_char)
  MORSE_CODE_MAPPING[morse_char] || ''
end

# Method to decode an entire word in Morse code
def decode_word(morse_word)
  morse_word.split(' ').map { |char| decode_morse_char(char) }.join('').upcase
end

# Method to decode the entire message in Morse code
def decode(message)
  words = message.split('   ')
  words.map { |word| decode_word(word) }.join(' ')
end

# usage:
morse_char_example = '.-'
decoded_char = decode_morse_char(morse_char_example)
puts decoded_char

morse_word_example = '-- -.--'
decoded_word = decode_word(morse_word_example)
puts decoded_word

morse_message_example = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
decoded_message = decode(morse_message_example)
puts decoded_message
