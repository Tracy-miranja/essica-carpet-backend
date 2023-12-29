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
      # Log the request details
      Rails.logger.info("Received booking request with parameters: #{booking_params}")
    end
  
    private
  
    def booking_params
      params.require(:booking).permit(:customer_id, :customer_name, :phone_number, :location, :apartment, :house_number, :carpet_size, :collection_time)
    end
    
      
  
    def authenticate_admin
      authenticate_admin! # Devise method for admin authentication
    end
  end
  
