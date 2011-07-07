Feed Satisfaction
=================
Feed Satisfaction is a simple [Rails](http://rubyonrails.org) engine that allows you to easily add a [Get Satisfaction](http://getsatisfaction.com) feedback page to your Rails apps.

Features
========
* Get Satisfaction [feedback page](http://getsatisfaction.com/explore/widgets)
* Optional [topic list](http://getsatisfaction.com/explore/widgets) in sidebar
* Optional [Single Sign-On](http://getsatisfaction.com/developers/single-sign-on) through FastPass

Requirements
============
* A Get Satisfaction account
* Your Company/Organization Domain

Installation & Configuration
============================

In your Gemfile add:

    gem "feed_satisfaction"

In the terminal run:

    bundle install

Create `config/initializers/feed_satisfaction.rb` and add:

    FeedSatisfaction.config do |config|

      ## Required Settings

      config.company = "example_company"

      ## Optional Settings

      # If you have your own custom domain
      #config.domain = "getsatisfaction.example_company.com"

      # If your feedback page is for a specific product
      #config.product = "example_product"

      # Style the widget with your own CSS file
      #config.custom_css = "http://example_company.com/css/feedback_page.css"

      # Customize 
      #config.default_tab = "question"
      #config.question_limit = 5

      # If you are using FastPass single sign-on
      #config.fastpass_key = "abc123"
      #config.fastpass_secret = "abcdefg123456789"

      # If you want a topic list in the sidebar
      #config.sidebar_name = :sidebar
      #config.widget_id = "1234567890"

    end

*If you're having trouble finding the right settings check the __Admin > Your Widgets__ page on your Get Satisfaction account*

Restart your server and go to __http://yourapp.com/feedback__ to see your feedback page.

You can use the url helpers `feedback_path` and `feedback_url` to link to the feedback page from your views.
