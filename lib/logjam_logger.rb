require 'logjam_logger/buffer'
require 'logjam_logger/formatter'
require 'logjam_logger/simple_formatter'

class ActiveSupport::BufferedLogger
  def buffer
    @buffer[Thread.current] ||= ::LogjamLogger::Buffer.new
  end
end
