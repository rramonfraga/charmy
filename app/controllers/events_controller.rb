class EventsController < ApplicationController
  def index
    events = Event.all
    json_response(event)
  end

  def create
    event = Event.new(event_params)
    if event.valid?
      create_event(event_params)
      json_response(event, :created)
    else
      json_error(400, "Event not created: #{event.errors}")
    end
  end

  private

  def event_params
    params.permit(:name,
                  :product_id,
                  user_attributes: [:id, :gender, :color, :style_ids, :size_ids])
  end
end
