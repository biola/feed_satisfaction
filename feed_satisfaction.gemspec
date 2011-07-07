lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'feed_satisfaction/version'

spec = Gem::Specification.new do |s|
  s.name = 'feed_satisfaction'
  s.version = FeedSatisfaction::VERSION
  s.summary = "Get Satisfaction feedback Rails engine"
  s.description = "Simple Ruby on Rails engine that allows you to easily add a Get Satisfaction feedback page to your app"
  s.files = Dir["{app,lib,config}/**/*"]
  s.require_path = 'lib'
  s.has_rdoc = false
  s.author = "Adam Crownoble"
  s.email = "adam@obledesign.com"
  s.homepage = "https://github.com/biola/feed_satisfaction"
end
