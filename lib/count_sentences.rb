require 'pry'

class String

  def sentence?
    self.chars[self.length-1] == "."
  end

  def question?
    self.chars[self.length-1] == "?"
  end

  def exclamation?
    self.chars[self.length-1] == "!"
  end

  def count_sentences
    self.split(/[.?!]/).delete_if{|string| string ==""}.length
  end
end
