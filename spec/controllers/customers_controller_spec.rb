require 'spec_helper'

describe CustomersController do
  describe 'Valid actions' do

    it "should get index successfully" do
       get :index
       response.should be_success
    end

    it "should post to create successfully" do
       post :create, user: FactoryGirl.attributes_for(:customer)
       response.should be_success
    end

    it "should change quantity of user on successful post" do
      lambda {
        post :create, customer: FactoryGirl.attributes_for(:customer)
      }.should change(Customer, :count).by(1)
    end

    it "should NOT change quantity of user on in-valid params" do
      lambda {
        post :create, customer: {}
      }.should_not change(Customer, :count).by(1)
    end


  end

 describe "actions with resource is required" do
   before do
    @custmers = 2.times {FactoryGirl.create(:customer)}
   end

    it "should assign customers" do
       get :index
       assigns[:customers].should be_equal(@customers)
    end

 end
  
end
