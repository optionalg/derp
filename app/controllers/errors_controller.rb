class ErrorsController < ApplicationController

  respond_to :api_v1

  def create
    @error = Error.create(error_params)
    respond_with(@error)
  end

  private

  def error_params
    params[:error].permit(:message, :project_id)
  end
end
