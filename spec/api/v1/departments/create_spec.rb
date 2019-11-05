require 'rails_helper'

RSpec.describe "departments#create", type: :request do
  subject(:make_request) do
    jsonapi_post "/api/v1/departments", payload
  end

  describe 'basic create' do
    let(:params) do
      attributes_for(:department)
    end
    let(:payload) do
      {
        data: {
          type: 'departments',
          attributes: params
        }
      }
    end

    it 'works' do
      expect(DepartmentResource).to receive(:build).and_call_original
      expect {
        make_request
        expect(response.status).to eq(201), response.body
      }.to change { Department.count }.by(1)
    end
  end
end
