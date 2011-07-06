module FeedSatisfaction
  require 'feed_satisfaction/fast_pass'
  
  # Settings
  mattr_accessor(:domain)
  self.domain = 'getsatisfaction.com'
  mattr_accessor(:company)
  mattr_accessor(:product)
  
  # single sign on
  mattr_accessor(:fastpass_key)
  mattr_accessor(:fastpass_secret)
  
  mattr_accessor(:widget_id)
  mattr_accessor(:custom_css)
  mattr_accessor(:default_tab)
  self.default_tab = 'question'
  mattr_accessor(:question_limit)
  self.question_limit = 5
  
  # if you want a list of community discussions to show up in your sidebar
  mattr_accessor(:sidebar_name)
  
  def self.account_url
    url = URI.parse ''
    url.scheme = 'http'
    url.host = self.domain
    url.path = "/#{self.company}/"
    url.to_s
  end
  
  # for easy configuration
  def self.config
    yield self
  end
  
  require 'feed_satisfaction/engine' if defined?(Rails)
end
