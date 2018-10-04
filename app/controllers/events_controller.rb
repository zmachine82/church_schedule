class EventsController < ApplicationController
  def index

  end

  def show
    set_schedule
    set_event
  end

  def new
    set_schedule
    @event = Event.new
  end

  def create
    set_schedule
    @event = @schedule.events.new(event_params)
    if @event.save
      redirect_to @schedule
    else
      render :new
    end
  end

  def edit
    set_schedule
    set_event
  end

  def update
    set_schedule
    set_event
    if @event.update(event_params)
      redirect_to schedule_event_path(@schedule, @event)
    else
      render :edit
    end

  end

  def destroy
    set_schedule
    set_event
    @event.destroy
    redirect_to schedule_path(@schedule)
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def set_schedule
    @schedule = Schedule.find(params[:schedule_id])
  end

  def event_params
    params.require(:event).permit(:name, :service)
  end
end
