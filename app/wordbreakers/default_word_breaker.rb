class DefaultWordBreaker
  BREAKERS = [" ", "\n", "\t", ".", ",", ";", ":", "\\(", "\\)", "\\[", "\\]", '\'','"', '\\?', '\\!', '<', '>']

  def initialize(source)
    @source = source
  end

  def split
    @source.split(regexp_splitter)
  end

  def regexp_splitter
    Regexp.new("[#{BREAKERS.join}]+")
  end
end