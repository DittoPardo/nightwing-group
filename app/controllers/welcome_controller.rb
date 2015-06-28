class WelcomeController < ApplicationController
  expose_decorated(:popular_projects, decorator: ProjectDecorator) { Project.order("RANDOM()").limit(3) }
end
