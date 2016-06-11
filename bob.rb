class Bob

  def hey(something)
    case
    when only_numbers(something)
      answer = "Whatever."
    when string_10(something) || is_q_n_caps(something) || is_exclamation(something) || allcaps(something)
      answer = "Whoa, chill out!"
    when is_question(something) || is_shuffle_10(something)
      answer = "Sure."
    when emptystring(something)
      answer = "Fine. Be that way!"
    else
      answer = "Whatever."
    end
    return answer
  end
end


  def string_10(string)
    true if (string.length == 10) && (string.strip != "")
  end

  def is_question(string)
        if string.end_with?("?")
          true
        else
          false
        end
  end

  def is_shuffle_10(string)
    true if (string.length == 10) && (string.end_with?("?"))
  end

  def is_q_n_caps(string)
    true if (string.end_with?("?")) && (string == string.upcase) && (string.to_i != 4)
  end

  def is_exclamation(string)
    array_chars = string.delete(' ').scan /\w/

    capletters = []
    ("A".."Z").each do |letter|
      capletters << letter
    end


#here
    no_of_capitals = 0

    array_chars.each do |char|
      if capletters.include?(char)
        no_of_capitals += 1
      else
      end
    end

#here


    true if string.end_with?("!") && no_of_capitals > 1
  end

  def allcaps(string)
    true if (string.length > 0) && (string == string.upcase) && (string.strip != "") && (string.to_i != 4)
  end



  def only_numbers(string)
    letters = []
    ("a".."z").each do |letter|
      letters << letter
    end

    ("A".."Z").each do |letter|
      letters << letter
    end

    array = string.split(//)

    found = array.map do |char|
      letters.include?(char)
    end

    sum = 0

    array.each do |char|
      sum += char.to_i
    end

    true if (found.any? == false) && (sum > 5)

  end

  def emptystring(string)
    true if string.strip.empty?
  end


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
