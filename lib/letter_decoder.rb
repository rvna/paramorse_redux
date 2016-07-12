module ParaMorse

  class LetterDecoder
    attr_reader :alphabet

    def initialize
      @alphabet = ParaMorse::Alphabet.new
    end

    def decode(letter)
      if alphabet.trans_morse.has_key?(letter)
        alphabet.trans_morse.key(letter)
      else
        nil
      end
    end
  end

end
