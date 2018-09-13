class UserOrderController < ApplicationController
    before_action :authenticate_user!

    def index
        @currentuser = "Hello"
        render "index"
    end

    def book 
        @driver = Driver.limit(10).order("RANDOM()").first
        render "check"
    end


end
