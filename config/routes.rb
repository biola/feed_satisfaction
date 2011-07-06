Rails.application.routes.draw do
  scope ENV['RAILS_RELATIVE_URL_ROOT'] || '/' do
    get 'feedback' => 'feed_satisfaction/feedbacks#show', :as=>:feedback
  end
end
