class WelcomeController < ApplicationController
  expose_decorated(:latest_projects, decorator: ProjectDecorator) { Project.order("created_at DESC").limit(3) }
end
