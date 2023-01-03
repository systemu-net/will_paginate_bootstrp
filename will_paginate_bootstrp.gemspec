# -*- encoding: utf-8 -*-
lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'will_paginate_bootstrp/version'

Gem::Specification.new do |spec|
  spec.name = 'will_paginate_bootstrp'
  spec.version = WillPaginateBootstrp::VERSION
  spec.required_ruby_version = '>= 1.9.2'

  spec.authors = ['Sergii Demianchuk']
  spec.email = 'sergeydemjanchyk@gmail.com'
  spec.summary = %q{Integrates Twitter Bootstrap pagination component with will_paginate gem}
  spec.description = %q{will_paginate_bootstrp provides Twitter Bootstrap pagination like design on top of will_paginate gem}
  spec.homepage = 'https://github.com/systemu-net/will_paginate_bootstrp'
  spec.license = 'MIT'

  spec.files = Dir['lib/**/*.rb'] + Dir['config/**/*.rb']
  spec.require_paths = ['lib']
  spec.test_files = spec.files.grep(/^spec/)

  spec.add_runtime_dependency 'will_paginate', '~> 3.3.1'
end
