require 'rails_helper'

RSpec.describe UserOrderController, type: :controller do
	require 'rails_helper'

# describe UserOrderController do

#   describe 'GET #index' do
#     context 'with params[:letter]' do
#       it "populates an array of foods starting with the letter" do
#         nasi_uduk = create(:food, name: "Nasi Uduk")
#         kerak_telor = create(:food, name: "Kelar Telor")
#         get :index, params: { letter: 'N' }
#         expect(assigns(:foods)).to match_array([nasi_uduk])
#       end

#       it "renders the :index template" do
#         get :index, params: { letter: 'N' }
#         expect(response).to render_template :index
#       end
#     end

#     context 'without params[:letter]' do
#       it "populates an array of all foods" do 
#         nasi_uduk = create(:food, name: "Nasi Uduk")
#         kerak_telor = create(:food, name: "Kelar Telor")
#         get :index
#         expect(assigns(:foods)).to match_array([nasi_uduk, kerak_telor])
#       end

#       it "renders the :index template" do
#         get :index
#         expect(response).to render_template :index
#       end
#     end
#   end


#   describe 'GET #new' do
#     it "assigns a new Food to @food" do
#       get :new
#       expect(assigns(:food)).to be_a_new(Food)
#     end

#     it "renders the :new template" do
#       get :new
#       expect(:response).to render_template :new
#     end
#   end
end
