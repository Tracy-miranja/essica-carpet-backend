# app/controllers/admin_controller.rb
class AdminController < ApplicationController
    before_action :authenticate_admin
    
    def index
        # You can add any logic here that you want to execute when the admin is authenticated.
        # For example, you can render a view or redirect to a specific page.
        render plain: 'Welcome to the Admin Dashboard!'
      end
  
    private
  
    def authenticate_admin
      authenticate_or_request_with_http_basic do |username, password|
        username == ENV['ADMIN@gmail.com'] && password == ENV['ADMIN_PASSWORD']
      end
    end
  end
  