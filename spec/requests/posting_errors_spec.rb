require 'requests_helper'

describe 'Posting an error' do
  context "Using API::V1" do
    let(:api_headers) do
      {
        'CONTENT_TYPE' => "application/vnd.derp.api.v1+json",
        'HTTP_ACCEPT'  => "application/vnd.derp.api.v1+json"
      }
    end

    describe "POST '/errors'" do
      it "creates an error with the supplied parameters" do
        project = Project.create(:name => "My Project")
        json = { 'error' => { 'project_id' => project.id, 'message' => 'hello' } }.to_json

        post '/errors', json, api_headers
        error_response = JSON.parse(response.body)

        response.should be_success
        error_response['error']['message'].should eq 'hello'
        Error.where(:message => 'hello').should exist
      end
    end
  end
end
