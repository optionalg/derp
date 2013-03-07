class AlertsController < ApplicationController
  respond_to :api_v1, :only => [:index, :show, :create]

  def index
    @project = Project.find(params[:project_id].to_i)
    @alerts = @project.alerts
  end

  def show
  end

  def create
  end

end
