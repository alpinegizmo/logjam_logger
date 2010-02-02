module LogjamLogger
  class Buffer < Array
    def <<(message)
      super formatter.format(message)
    end
    
    def formatter
      klass =  defined?(LOGJAM_FORMATTER_CLASS) ? LOGJAM_FORMATTER_CLASS : LogjamLogger::Formatter
      @formatter ||= klass.new
    end
  end
end
