class EventsController < ApplicationController
    before_action :find_event, only [:edit, :update, :show, :delete]

    def index
        @events = Event.all
    end

    def new
        @event = Event.new
    end

    def create
        @event = Event.new
        if @event.save(event_params)
            flash[:notice] = "Success"
            redirect_to event_path(@event)
        else
            flash[:alert] = "Bad stuff"
            render :new
        end
    end

    def edit
    end

    def update
        if @event.update_attributes(event_params)
            flash[:notice] = "Succes"
            redirect_to event_path(@event)
        else
            flash[:alert] = "Bad"
            render :edit
        end
    end

    def show
    end

    def destroy
        if @event.destroy
            flash[:notice] = "Success"
            redirect_to events_path
        else
            flash[:alert] = "Bad"
        end
    end

    private
        def event_params
            params.require(:event).permit(:time, :name, :room, :presenter, :sum, :maps, :predoc, :postdoc, :food)
        end
        def find_event
            @event = Event.find(params[:id])
        end
end
