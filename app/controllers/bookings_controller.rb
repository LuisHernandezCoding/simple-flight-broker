class BookingsController < ApplicationController
  def new 
    @flight = Flight.find(params[:flight_id])
    @passengers = params[:passengers].to_i
    @booking = Booking.new
    @passengers.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      flash[:success] = "Booking created!"
      redirect_to @booking
    else
      flash[:danger] = "Booking failed!"
      render 'new'
    end
  end

  def show
    @booking = Booking.find(params[:id])
    @flight = @booking.flight
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:name, :email])
  end
end
