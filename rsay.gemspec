Gem::Specification.new do |s|
   s.name = %q{rsay}
   s.version = "1.0.0"
   s.date = %q{2008-12-05}
   s.authors = ["MEKDIGITAL"]
   s.email = %q{etozzato@gmail.com}
   s.summary = %q{RSay is yet another google translate api ruby interface.}
   s.homepage = %q{http://code.google.com/p/rsay/}
   s.description = %q{RSay is yet another google translate api ruby interface.}
   s.files = [ "README", "MIT-LICENSE", "lib/rsay.rb", "lib/rsay/rsay.rb", "lib/rsay/language.rb", "bin/rsay"]
   s.add_dependency('json', '>= 1.1.3')
   s.add_dependency('htmlentities', '>= 4.0.0')
   s.default_executable = 'bin/rsay'
   s.bindir = '/usr/local/bin/'
end