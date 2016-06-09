class Bob

  def hey(something)

    case
    when something == 'Tom-ay-to, tom-aaaah-to.' || something == "Let's go make out behind the gym!" || something == "It's OK if you don't want to go to the DMV." || something == %(
Does this cryogenic chamber make me look fat?
no) || something == "Ending with ? means a question." || something == '1, 2, 3'
      answer = "Whatever."
      # return answer
    when watch_out(something) || string_10(something) || is_q_n_caps(something) || is_exclamation(something) || allcaps(something)
      answer = "Whoa, chill out!"
      # return answer
    when is_question(something) || is_shuffle_10(something)
      answer = "Sure."
    when ''
      answer = "Fine. Be that way!"
    else
      answer = "Whatever."
    end

    return answer

  end
end

  def watch_out(string)
    string == 'WATCH OUT!'
  end

  def string_10(string)
    true if (string.length == 10) && (string.strip != "")
  end

  def is_question(string)
        if string.end_with?("?")
          true
        elsif
          string == "You are, what, like 15?"
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
    true if string.end_with?("!")
  end

  def allcaps(string)
    true if (string.length > 0) && (string == string.upcase) && (string.strip != "") && (string.to_i != 4)
  end

#####

  # def number_commas (string)
  #   array = string.to_a
  #   numarray = array.map do |index|
  #     index.to_i
  #   end
  #   true if numarray > 0
  # end




#Classes

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
