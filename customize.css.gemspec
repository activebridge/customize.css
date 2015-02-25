# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'customize-rails/version'

Gem::Specification.new do |spec|
  spec.name          = 'customize-rails'
  spec.version       = Customize::Rails::VERSION
  spec.authors       = ['galulex']
  spec.email         = ['galulex@gmail.com']
  spec.summary       = %{ Customize.css }
  spec.description   = %{
                          customize.css provides you the base styling for your application and gives you ability to easily customize the look of your app.
                          The main advantage of this lib that you don't have to overwrite styles you can just set it.
                          Another advantage is that all inputs, checkboxes, radio buttons, select boxes have the same look and behaviour in all browsers.
                          Also you can change the look of select or checkbox by setting several `sass` maps.
                          This is the engine that supports themes so developers are able to share themes between each other.
                        }
  spec.homepage      = 'http://github.com/activebridge/customize.css'
  spec.license       = 'MIT'
  spec.files         = Dir['README.md', 'lib/**/*', 'vendor/**/*']
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
end
