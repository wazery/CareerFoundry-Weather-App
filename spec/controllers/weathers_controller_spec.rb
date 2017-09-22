require 'rails_helper'

RSpec.describe WeathersController, type: :controller do
  describe 'POST #query_for_weather' do
    context 'when lat, lon are correct' do
      it 'renders the page with weather data' do
        post :query_for_weather, { latitude: '25.2048493', longitude: '55.27078280' }

        response.redirect_url.should match(%r{^http://test.host/display_weather(\?|$)})
        expect(flash[:notice]).to match(/^Weather was successfully retrived./)
        end
      end

      context 'when lat, lon are incorrect' do
        it 'renders the page with an error message' do
          post :query_for_weather, { latitude: '', longitude: '' }

          expect(response).to redirect_to root_path
          expect(flash[:alert]).to match(/^Can't get the weather for this location!/)
        end
      end
    end
  end
