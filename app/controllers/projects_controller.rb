class ProjectsController < ApplicationController

  respond_to :html, :api_v1

  def show
    @project = Project.find(params[:id])
    respond_with(@project)
  end

  def create
    @project = Project.create(project_params)
    respond_with(@project)
  end

  private

  def project_params
    params[:project].permit(:name)
  end

end
