Gem::Specification.new do |s|
  s.name = %q{logjam_logger}
  s.version = "1.1.1"
 
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["David Anderson"]
  s.date = %q{2010-02-02}
  s.description = %q{Syslog-compatible rails logger}
  s.email = %q{david@alpinegizmo.com}
  s.files = [
     "LICENSE",
     "README.markdown",
     "logjam_logger.gemspec",
     "lib/logjam_logger.rb",
     "lib/logjam_logger/buffer.rb",
     "lib/logjam_logger/formatter.rb",
     "lib/logjam_logger/simple_formatter.rb"
  ]
  s.homepage = %q{http://github.com/alpinegizmo/logjam_logger}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Syslog-compatible rails logger, works well with Logjam}
  s.test_files = [
  ]
 
  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3
  else
  end
end
