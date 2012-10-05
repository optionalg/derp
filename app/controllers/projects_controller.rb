class ProjectsController < ApplicationController

  respond_to :html, :api_v1

  def show
    @project = Project.find(params[:id])
    respond_with(@project)
  end

  def create
    allowed_params = %w{ name }
    project_params = params[:project].slice(allowed_params)
    @project = Project.create(project_params)
    respond_with(@project)
  end

end
