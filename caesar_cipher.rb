def caesar_cipher(str, num)
    result = ''
    str.each_char do |ch|
      result += char_value ch, num
    end
    result
  end
  
  def islower(char)
    ('a'..'z').include? char
  end
  
  def isupper(char)
    ('A'..'Z').include? char
  end
  
  def greater_than_z(char, num)
    if char.ord + num > 'z'.ord
      (('a'..'z').first.ord + char.ord - ('a'..'z').last.ord - 1).chr
    else
      char
    end
  end
  
  def greater_than_Z(char, num)
    if char.ord + num > 'Z'.ord
      (('A'..'Z').first.ord + char.ord - ('A'..'Z').last.ord - 1).chr
    else
      char
    end
  end
  
  def char_value(char, num)
    return ((greater_than_z char, num).ord + num).chr if islower char
    return ((greater_than_Z char, num).ord + num).chr if isupper char
  
    char
  end
  
  p caesar_cipher 'What a string!', 5