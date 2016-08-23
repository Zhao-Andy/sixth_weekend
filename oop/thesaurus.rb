# Create a thesaurus application. To create it, you will create two classes, Thesaurus and Entry.
# A Thesaurus will contain many Entries. An Entry contains three primary attributes:
# word, synonyms, and antonyms. Your application should contain the following features:
# 1. The ability to add new words to a Thesaurus.
# 2. The ability to delete a word from a Thesaurus.
# 3. The ability to look up a word's synonyms.
# 4. The ability to look up a word's antonyms.
# 5. The ability to add a synonym to a word.
# 6. The ability to add an antonym to a word.
#
# Part of the challenge is to determine which functionality belongs in the Thesaurus class,
# and which belongs in the Entry class.
#
# And... test your functionality using RSpec!
require 'pry'
class Thesaurus
  attr_accessor :thesaurus
  def initialize
    @thesaurus = {}
  end

  def synonyms(word)
    @thesaurus[][:synonyms]
  end

  def antonyms(word)
    @thesaurus["#{word}"][:antonyms]
  end

  def delete_word(word)
    @thesaurus.delete(word)
    puts "You deleted #{word}!"
  end
end

class Entry
  attr_accessor :word, :synonym, :antonym
  def initialize(input)
    @word = input[:word]
    @synonym = input[:synonym]
    @antonym = input[:antonym]
  end

  def add_synonym(word, synonym)
    @thesaurus[:word][:synonyms] << synonym
    puts "You added #{synonym} to #{word}!"
  end

  def add_antonym(word, antonym)
    @thesaurus[:word][:antonyms] << antonym
    puts "You added #{antonym} to #{word}!"
  end
end

binding.pry
