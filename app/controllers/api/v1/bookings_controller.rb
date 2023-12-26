class Api::V1::BookingsController < ApplicationController
    before_action :authenticate_admin, only: [:index]
  
    def index
      @bookings = Booking.all
      render json: @bookings
    end
  
    def create
      @booking = Booking.new(booking_params)
  
      if @booking.save
        render json: @booking, status: :created
      else
        render json: @booking.errors, status: :unprocessable_entity
      end
    end
  
    private
  
    def booking_params
      params.require(:booking).permit(:customer_id, :item, :address, :house_number, :carpet_size)
    end
  
    def authenticate_admin
      authenticate_admin! # Devise method for admin authentication
    end
  end
  
