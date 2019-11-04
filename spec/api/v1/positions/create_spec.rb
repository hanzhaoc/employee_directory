require 'rails_helper'

RSpec.describe "positions#create", type: :request do
  subject(:make_request) do
    response = jsonapi_post "/api/v1/positions", payload
    response
  end
  describe 'basic create' do
    let!(:employee) { create(:employee) }

    let(:params) do
      attributes_for(:position)
    end

    let(:payload) do
      {
        data: {
          type: 'positions',
          attributes: {},
          relationships: {
            employee: {
              data: employee.id.to_s,
              type: 'employees'
            }
          }
        }
      }
    end

    it 'works' do
      expect(PositionResource).to receive(:build).and_call_original
      expect {
        make_request
        expect(response.status).to eq(201), response.body
      }.to change { Position.count }.by(1)
    end
  end
end
