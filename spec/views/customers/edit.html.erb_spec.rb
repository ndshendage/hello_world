require 'rails_helper'

RSpec.describe "customers/edit", type: :view do
  before(:each) do
    @customer = assign(:customer, Customer.create!(
      :name => "MyString",
      :address => "MyText",
      :gender => "MyString",
      :age => 1
    ))
  end

  it "renders the edit customer form" do
    render

    assert_select "form[action=?][method=?]", customer_path(@customer), "post" do

      assert_select "input#customer_name[name=?]", "customer[name]"

      assert_select "textarea#customer_address[name=?]", "customer[address]"

      assert_select "input#customer_gender[name=?]", "customer[gender]"

      assert_select "input#customer_age[name=?]", "customer[age]"
    end
  end
end
