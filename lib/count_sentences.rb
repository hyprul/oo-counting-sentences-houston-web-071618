require 'pry'

class String

  def sentence?()
  	self[-1] == '.'
  end

  def question?
  	self[-1] == '?'

  end

  def exclamation?
  	self[-1] == '!'
  end

  def count_sentences
  	delimiters = ['.', '?', '!']
  	split = self.split(Regexp.union(delimiters))
  	split.reject { |c| c.empty?}.length
  end
end