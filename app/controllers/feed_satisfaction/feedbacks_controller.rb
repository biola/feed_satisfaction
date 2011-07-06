module FeedSatisfaction
  class FeedbacksController < ::ApplicationController
    def show
      @user = current_user if defined? current_user
    end
  end
end
