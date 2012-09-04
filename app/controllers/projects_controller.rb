class ProjectsController < ApplicationController

  respond_to :json, :html, :api_v1

  def show
    @project = Project.find(params[:id])
    respond_with(@project)
  end

  def create
    project_params = params[:project]
    @project = Project.create(project_params)
    respond_with(@project)
  end
end
