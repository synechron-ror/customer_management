require 'spec_helper'

describe CustomersController do

  describe 'Actions' do

    it "should get index successfully" do
       get :index
       response.should be_success
    end

    
  end
end
