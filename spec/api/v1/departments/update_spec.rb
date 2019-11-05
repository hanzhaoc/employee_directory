require 'rails_helper'

RSpec.describe "departments#update", type: :request do
  subject(:make_request) do
    jsonapi_put "/api/v1/departments/#{department.id}", payload
  end

  describe 'basic update' do
    let!(:department) { create(:department) }

    let(:payload) do
      {
        data: {
          id: department.id.to_s,
          type: 'departments',
          attributes: {
            # ... your attrs here
          }
        }
      }
    end

    # Replace 'xit' with 'it' after adding attributes
    xit 'updates the resource' do
      expect(DepartmentResource).to receive(:find).and_call_original
      expect {
        make_request
        expect(response.status).to eq(200), response.body
      }.to change { department.reload.attributes }
    end
  end
end
