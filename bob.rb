class Bob

  def hey(something)
    case
    when is_question(something) #|| is_shuffle_10(something)
      answer = "Sure."
    when emptystring(something)
      answer = "Fine. Be that way!"
    when is_q_n_caps(something) || is_exclamation_n_manycapitals(something) || all_caps(something)
      answer = "Whoa, chill out!"
    else
      answer = "Whatever."
    end
    return answer
  end

end


  def is_question(string)
      true if (string.end_with?("?")) == true && (all_caps(string) != true )
  end

  def is_q_n_caps(string)
    true if (string.end_with?("?")) && (string == string.upcase) #&& (string.to_i != 4)
  end

  def all_caps(string)
    array_chars = string.delete(' ').scan /\w/

    capletters = []
    ("A".."Z").each do |letter|
      capletters << letter
    end

    char_count = 0
    no_of_capitals = 0

    array_chars.each do |char|
      char_count += 1
      if capletters.include?(char)
        no_of_capitals += 1
      else
      end
    end

    true if char_count == no_of_capitals

  end

  def is_exclamation_n_manycapitals (string)
    array_chars = string.delete(' ').scan /\w/

    capletters = []
    ("A".."Z").each do |letter|
      capletters << letter
    end

    no_of_capitals = 0

    array_chars.each do |char|
      if capletters.include?(char)
        no_of_capitals += 1
      else
      end
    end

    true if string.end_with?("!") && no_of_capitals > 1
  end

  def emptystring(string)
    true if string.strip.empty?
  end



###FOR REFERENCE####:

#How to check if a string has only numbers in it? See below.

  # def only_numbers(string)
  #   letters = []
  #   ("a".."z").each do |letter|
  #     letters << letter
  #   end
  #
  #   ("A".."Z").each do |letter|
  #     letters << letter
  #   end
  #
  #   array = string.split(//)
  #
  #   found = array.map do |char|
  #     letters.include?(char)
  #   end
  #
  #   sum = 0
  #
  #   array.each do |char|
  #     sum += char.to_i
  #   end
  #
  #   true if (found.any? == false) && (sum > 5)
  #
  # end



  ###TO BE REVISITED####

#Cases and symbols (could not identify how to use cases and symbols)

#   case something
#   when :asking
#     if is_question(something)
#       answer = "Sure."
#   when :yelling
#     answer = "Whoa, chill out!"
#   when :saying_nothing
#     answer = "Fine. Be that way!"
#   else
#     answer = "Whatever."
#   end
#   return answer
#
# end

# def is_question(string)
#   if string.end_with?("?")
#     string = :asking
#   else
#   end
#   return string
# end
