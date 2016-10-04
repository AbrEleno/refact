def dummy_encrypt(string)
    string.reverse.swapcase.gsub(/[aeio]/,"*")
end


class MaxLetterFrequencyPerWord
  def words_longer_than(array,num)
    @@words = array.split.select{|word| word.length > num}
  end

  def letter_per_word#(letter)
    @@num_array = @@words.map{|w| w.count("e")}
  end

  def numbers_larger_than#(num_array)
    @@num_array.max
  end
end

puts dummy_encrypt("EsteEsMiPassword") == "DROWSSApImS*ETS*"

max = MaxLetterFrequencyPerWord.new
p max.words_longer_than("entero entrar envase enviar enzima equino equipo erario erguir eriaza eriazo erigir eringe eficientemente electroencefalografía", 3) == ["entero", "entrar", "envase", "enviar", "enzima", "equino", "equipo", "erario", "erguir", "eriaza", "eriazo", "erigir", "eringe", "eficientemente", "electroencefalografía"]
p max.letter_per_word == [2, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 5, 4]
p max.numbers_larger_than == 5