class WelcomeController < ApplicationController
    expose(:popular_projects) { Project.order("RANDOM()").limit(3) }
end
