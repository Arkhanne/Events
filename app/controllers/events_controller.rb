# frozen_string_literal: true

#
# EventsController
#
class EventsController < ApplicationController
  def index
    @time = Time.now
    @events = ['BugSmash', 'Hackathon', 'Kata Camp', 'Rails User Group']
  end
end
