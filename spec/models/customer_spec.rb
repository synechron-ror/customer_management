require 'spec_helper'

describe Customer do

  describe 'it should validate required params' do
    context "Email validations for format" do
      it{should validate_presence_of(:email) }
      it { should_not allow_value("blah").for(:email) }
      it { should_not allow_value("bl ah").for(:email) }
      it { should_not allow_value("a@b").for(:email) }
      it { should allow_value("a@b.com").for(:email) }
      it { should allow_value("a@b.co.m").for(:email) }
      it { should allow_value("a_b@b.co.m").for(:email) }
    end

    context "First name validations for format" do
      it { should_not allow_value("b l a h").for(:first_name) }
      it { should_not allow_value("b.l;a h").for(:first_name) }
      it { should_not allow_value("bah%$%").for(:first_name) }
      it { should allow_value("abc").for(:first_name) }
    end

    context "Last name validations for format" do
      it { should_not allow_value("b l a h").for(:last_name) }
      it { should_not allow_value("b.l;a h").for(:last_name) }
      it { should_not allow_value("bah%$%").for(:last_name) }
      it { should allow_value("abc").for(:last_name) }
    end
  
  end

   context "it should not allow me to create user with the same email" do
     before do
       @customer = FactoryGirl.create(:customer)
       @another_customer = @customer.dup
       @another_customer.email = @customer.email
       @another_customer.save
     end
      it { @another_customer.should_not be_valid }
      it{ should validate_uniqueness_of(:email) }
   end

end
