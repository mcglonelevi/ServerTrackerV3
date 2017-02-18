class ErrorEventsController < ApplicationController
  before_action :set_error_events
  before_action :set_error_event, only: [:show, :edit, :update, :destroy]

  # GET servers/1/error_events
  def index
    @error_events = @server.error_events
  end

  # GET servers/1/error_events/1
  def show
  end

  # GET servers/1/error_events/new
  def new
    @error_event = @server.error_events.build
  end

  # GET servers/1/error_events/1/edit
  def edit
  end

  # POST servers/1/error_events
  def create
    @error_event = @server.error_events.build(error_event_params)
    respond_to do |format|
      if @error_event.save
        format.html { redirect_to([@error_event.server, @error_event], notice: 'Error event was successfully created.') }
        format.json { render :show, status: :created, location: @server }
      else
        format.html { render :new }
        format.json { render json: @server.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT servers/1/error_events/1
  def update
    if @error_event.update_attributes(error_event_params)
      redirect_to([@error_event.server, @error_event], notice: 'Error event was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE servers/1/error_events/1
  def destroy
    @error_event.destroy

    redirect_to server_error_events_url(@server)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_error_events
      @server = Server.find(params[:server_id])
    end

    def set_error_event
      @error_event = @server.error_events.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def error_event_params
      params.require(:error_event).permit(:message)
    end
end
