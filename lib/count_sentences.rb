require 'pry'

class String

  def sentence?
    if self[-1] == "."
      return true
    else
      return false
    end
  end

  def question?
    if self[-1] == "?"
      return true
    else
      return false
    end
  end

  def exclamation?
    if self[-1] == "!"
      return true
    else
      return false
    end
  end

  def count_sentences
    number_of_words = self.split.sum do |word|
      if word.exclamation? || word.question? || word.sentence?
        1
      else 
        0
      end
    end
    number_of_words
  end
end

