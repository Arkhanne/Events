# frozen_string_literal: true

#
# EventsController
#
class EventsController < ApplicationController
  def index
    @events = Event.all
  end
end
