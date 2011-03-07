module Enumerable
  def each_with_logging(logger = nil)
    len = self.length
    self.each_with_index{|value, index|
      message = "#{caller.first} #{index+1} / #{len}"
      logger.respond_to?(:debug) ? logger.debug(message) : warn(message)
      yield value
    }
  end
end
