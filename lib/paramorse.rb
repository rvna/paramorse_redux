require "pry"
require "./lib/decoder"
require "./lib/encoder"
require "./lib/file_decoder"
require "./lib/file_encoder"
require "./lib/instant_noodles"
require "./lib/letter_decoder"
require "./lib/letter_encoder"
require "./lib/parallel_decoder"
require "./lib/parallel_encoder"
require "./lib/stream_decoder"
require "./lib/queue"

module ParaMorse

  ALPHABET =  {
    "A" => "10111",
    "B" => "111010101",
    "C" => "11101011101",     "D" => "1110101",
    "E" => "1",               "F" => "101011101",
    "G" => "111011101",       "H" => "1010101",
    "I" => "101",             "J" => "1011101110111",
    "K" => "111010111",       "L" => "101110101",
    "M" => "1110111",         "N" => "11101",
    "O" => "11101110111",     "P" => "10111011101",
    "Q" => "1110111010111",   "R" => "1011101",
    "S" => "10101",           "T" => "111",
    "U" => "1010111",         "V" => "101010111",
    "W" => "101110111",       "X" => "11101010111",
    "Y" => "1110101110111",   "Z" => "11101110101",
    " " => "0",               "1" => "10111011101110111",
    "2" => "101011101110111", "3" => "1010101110111",
    "4" => "10101010111",     "5" => "101010101",
    "6" => "11101010101",     "7" => "1110111010101",
    "8" => "111011101110101", "9" => "11101110111011101",
    "0" => "1110111011101110111"}

end

en = ParaMorse::ParallelEncoder.new
de = ParaMorse::ParallelDecoder.new

en.encode_from_file("translated.txt", 3, "back_to_morse*.txt")
de.decode_from_files(2, "back_to_morse*.txt", "and_back_to_text.txt")
