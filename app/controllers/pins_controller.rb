class PinsController < ApplicationController
  before_action :set_pin, only: [:show, :edit, :update, :destroy]

  respond_to :html
# Read/show all the pins
  def index
    @pins = Pin.all
    respond_with(@pins)
  end
# Read the pin
  def show
    respond_with(@pin)
  end
# Create new pin
  def new
    @pin = Pin.new
    respond_with(@pin)
  end

  def edit
  end

# This is actually using the new action + create action
  def create
    @pin = Pin.new(pin_params)
    if @pin.save
      redirect_to @pin, notice: 'Pin was successfully created!'
    else
      render action: 'new'
    end
  end
# This is actually using the edit and update action
  def update
    if @pin.update(pin_params)
      redirect_to @pin, notice: 'Pin was successfully updated!'
    else
      render action: 'edit'
    end
  end

  def destroy
    @pin.destroy
    respond_with(@pin)
  end

  private
    def set_pin
      @pin = Pin.find(params[:id])
    end

    def pin_params
      params.require(:pin).permit(:description)
    end
end
