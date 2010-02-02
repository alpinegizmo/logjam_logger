module LogjamLogger
  class SimpleFormatter
    def format(message)
      "#{Time.now.strftime("%b %d %H:%M:%S")} rails[#{$PID}]: #{message.gsub(/\n/, '').lstrip}\n"
    end
  end
end
