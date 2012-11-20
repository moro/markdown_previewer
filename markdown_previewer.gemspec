# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'markdown_previewer/version'

Gem::Specification.new do |gem|
  gem.name          = "markdown_previewer"
  gem.version       = MarkdownPreviewer::VERSION
  gem.authors       = ["moro"]
  gem.email         = ["moronatural@gmail.com"]
  gem.description   = %q{Simple rack app to give your app 'Preview Markdown' functionality.}
  gem.summary       = %q{Simple rack app to give your app 'Preview Markdown' functionality.}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'redcarpet'
end
