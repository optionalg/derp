require 'spec_helper'

describe ProjectsController do
  describe "POST 'create'" do
    let(:project_params) { { 'name' => 'My Project' }        }
    let(:project)        { mock_model(Project)               }
    before               { Project.stubs(:create => project) }

    it "creates a project with the supplied parameters" do
      post 'create', 'project' => project_params

      Project.should have_received(:create).with(project_params)
      response.should redirect_to(project)
    end

    context "using the JSON format" do
      it "creates a project with the supplied parameters" do
        post 'create', 'project' => project_params

        response.should redirect_to project
        Project.should have_received(:create).with(project_params)
      end
    end
  end
end
