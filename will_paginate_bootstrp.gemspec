# -*- encoding: utf-8 -*-
lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'will_paginate_bootstrp/version'

Gem::Specification.new do |spec|
  spec.name = 'will_paginate_bootstrp'
  spec.version = WillPaginateBootstrp::VERSION

  spec.authors = ['Sergii Demianchuk']
  spec.email = 'sergeydemjanchyk@gmail.com'
  spec.description = <<-DESCRIPTION
    This gem integrates the Twitter Bootstrap4 pagination component with the will_paginate pagination gem."
  DESCRIPTION
  spec.summary = %q{Integrates the Twitter Bootstrap pagination component with will_paginate}
  spec.homepage = 'https://github.com/systemu-net/will_paginate_bootstrp'
  spec.license = 'MIT'

  spec.files = Dir['lib/**/*.rb'] + Dir['bin/*']
  spec.require_paths = ['lib']
  spec.test_files = spec.files.grep(/^spec/)

  spec.add_runtime_dependency 'will_paginate', '~> 3.0', '>= 3.0.0'
end
