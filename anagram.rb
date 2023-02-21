class Anagram
  def initialize(word)
    @word = word
  end

  def match(list_of_words)
    list = list_of_words.reject {|w| w.downcase == @word.downcase}
    list.select {|w| w.downcase.chars.sort == @word.downcase.chars.sort}
  end
end

# detector = Anagram.new('corn')
# p detector.match %w(corn dark Corn rank CORN cron park)