def caesar_cipher(string,shift) 

  for i in 0...string.size do

    alphabet_ord = string[i].ord
    new_alphabet_ord = alphabet_ord + shift 

    while ((alphabet_ord > 64 && alphabet_ord < 91) && (new_alphabet_ord < 65 || new_alphabet_ord > 90)) do 
      if alphabet_ord > 64 && alphabet_ord < 91 && new_alphabet_ord < 65
        new_alphabet_ord = 91 - (65 - new_alphabet_ord)
      elsif alphabet_ord > 64 && alphabet_ord < 91 && new_alphabet_ord > 90
        new_alphabet_ord = 65 + new_alphabet_ord - 91
      end  
    end

    while ((alphabet_ord > 96 && alphabet_ord < 123) && (new_alphabet_ord < 97 || new_alphabet_ord > 122)) do
      if alphabet_ord > 96 && alphabet_ord < 123 && new_alphabet_ord < 97
        new_alphabet_ord = 123 - (97 - new_alphabet_ord)
      elsif alphabet_ord > 96 && alphabet_ord < 123 && new_alphabet_ord > 122
        new_alphabet_ord = 97 + new_alphabet_ord - 123
      end
    end

    if (alphabet_ord > 64 && alphabet_ord < 91) || (alphabet_ord > 96 && alphabet_ord < 123)
      
    else
      new_alphabet_ord = alphabet_ord
    end

    string[i] = new_alphabet_ord.chr
  end

  puts string
end

puts "enter sentence"
string = gets
puts "enter shift amount"
shift = gets.to_i
caesar_cipher(string,shift)