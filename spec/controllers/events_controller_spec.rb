require 'rails_helper'

RSpec.describe EventsController, type: :controller do
  describe 'get index' do
    it 'index returns a 200' do
      get :index
      expect(response).to have_http_status(200)
    end
  end

  it 'show all events' do
    event = Event.new
    event.save(validate: false)

    get :index
    expect(assigns(:events)).to eq [event]
  end
end
