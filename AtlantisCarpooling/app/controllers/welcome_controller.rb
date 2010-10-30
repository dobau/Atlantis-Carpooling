class WelcomeController < ApplicationController
    def index
        @rides = Ride.all
    end
end
