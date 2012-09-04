require 'requests/requests_helper'

describe "Creating a project" do
  context "Using API::V1" do
    describe "POST '/projects'" do
      it "creates a project with the supplied parameters" do
        json = { 'project' => { 'name' => 'My Project' } }.to_json

        post '/projects', 'project' => { 'name' => 'My Project' }, :format => :json
        project_response = JSON.parse(response.body)

        response.should be_success
        project_response['name'].should eq 'My Project'
        Project.where(:name => 'My Project').should exist
      end
    end
  end
end
