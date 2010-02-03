This gem provides syslog-compatible logging for rails applications. Just add it to your application and you are good to go -- no other changes are required. (But to really take your logging to the next level, also add [time_bandits](http://github.com/skaes/time_bandits).)

    config.gem 'logjam_logger'

User ids are logged via a global hash, $user_id. You can use a before_filter in your application_controller to set it, eg:

    before_filter { |controller| ($user_ids ||= {})[Thread.current] = controller.session[:user_id] || 0 }

If you wish to change the format of the logged output, you can set LOGJAM_FORMATTER_CLASS to your own formatter after loading the gem. For a simple example, see LogjamLogger::SimpleFormatter in lib/logjam_logger/simple_formatter.rb.

    config.gem 'logjam_logger'
    LOGJAM_FORMATTER_CLASS = MyCustomFormatter

logjam_logger was written to work well with [Logjam](http://github.com/alpinegizmo/logjam).