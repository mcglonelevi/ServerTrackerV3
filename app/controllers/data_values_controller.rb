class DataValuesController < ApplicationController
  before_action :set_data_values
  before_action :set_data_value, only: [:show, :edit, :update, :destroy]

  # GET servers/1/data_values
  def index
    @data_values = @server.data_values
  end

  # GET servers/1/data_values/1
  def show
  end

  # GET servers/1/data_values/new
  def new
    @data_value = @server.data_values.build
  end

  # GET servers/1/data_values/1/edit
  def edit
  end

  # POST servers/1/data_values
  def create
    @data_value = @server.data_values.build(data_value_params)

    if @data_value.save
      redirect_to([@data_value.server, @data_value], notice: 'Data value was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT servers/1/data_values/1
  def update
    if @data_value.update_attributes(data_value_params)
      redirect_to([@data_value.server, @data_value], notice: 'Data value was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE servers/1/data_values/1
  def destroy
    @data_value.destroy

    redirect_to server_data_values_url(@server)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_data_values
      @server = Server.find(params[:server_id])
    end

    def set_data_value
      @data_value = @server.data_values.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def data_value_params
      params.require(:data_value).permit(:name, :value)
    end
end
