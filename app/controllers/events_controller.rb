class EventsController < ApplicationController
    def show
    end

    def create
    end

    def index
      @events = Event.all
    end

    def new
    end

    def destroy
    end
end
