This gem provides syslog-compatible logging for rails applications. Just add it to your application and you are good to go -- no other changes are required. (But to really take your logging to the next level, also add [time_bandits](http://github.com/skaes/time_bandits).)

Standard rails log:

  Completed in 775ms (View: 158, DB: 79) | 200 OK ...
  
With logjam_logger, including optional user_id:

  Dec 18 17:36:17 frodo rails[13902] user[7610]: Completed in 775ms (View: 158, DB: 79) | 200 OK ...
  
With time bandits, including memcache, gc, and heap statistics:

  Feb 03 08:41:39 frodo rails[23914]: Completed in 775.170ms (View: 157.536, DB: 78.723(20,2), MC: 0.000(0r,0m), GC: 63.514(1), HP: 0(450818,157437,5412650)) | 200 OK ...

==Installation

    config.gem 'logjam_logger'
    
==User ids

User ids can be logged via a global hash, $user_ids. You can use a before_filter in your application_controller to set it, eg:

    before_filter { |controller| ($user_ids ||= {})[Thread.current] = controller.session[:user_id] || 0 }
    
This is optional -- if $user_ids is undefined, that part of the log line will be left out.

==Custom formatting

If you wish to change the format of the logged output, you can set LOGJAM_FORMATTER_CLASS to your own formatter after loading the gem. For a simple example, see LogjamLogger::SimpleFormatter in lib/logjam_logger/simple_formatter.rb.

    config.gem 'logjam_logger'
    LOGJAM_FORMATTER_CLASS = MyCustomFormatter
    
For example, you might want to extend LogjamLogger::Formatter to also include the session_id.
    
==Log file analysis

logjam_logger was written to work well with [Logjam](http://github.com/alpinegizmo/logjam).
