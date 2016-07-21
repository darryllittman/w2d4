require 'byebug'

def anagram_p1?(word1, word2)
  word1_possibles = word1.chars.permutation.to_a
  word1_possibles.map! { |subarray| subarray.join("") }

  word1_possibles.include?(word2)
end

def anagram_p2?(word1, word2)
  return false if word1.length != word2.length

  word1_c = word1.chars
  word2_c = word2.chars

  word1_c.each do |letter|
    if word2_c.include?(letter)
      word2_c.delete(letter)
    end
  end

  word2_c.empty?
end

def anagram_p3?(word1, word2)
  word1.chars.sort == word2.chars.sort
end
