require 'pry'

class String

  def sentence?
    if self[-1] == "."
      true
    else
      false
    end
  end

  def question?
    if self.end_with?("?")
      true
    else
      false
    end

  end

  def exclamation?
    if self.split("").last == "!"
      true
    else
      false
    end
  end

  def count_sentences
    counter = 0
    if !self
      return counter
    elsif
      self.split(" ").each do |word|
        if word.sentence? || word.question? || word.exclamation?
          counter += 1
        end
      end
    end

    return counter         
  end
end
