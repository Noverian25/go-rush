class DriverPanelController < ApplicationController
    before_action :authenticate_driver! , except: [:update]

    def index
        render "index"
    end

    def update
        @driver = Driver.find(params[:id])
        @driver.update(account_update_params)
    end

    def account_update_params
        params.permit(:id,:latitude, :longitude)
    end

end
