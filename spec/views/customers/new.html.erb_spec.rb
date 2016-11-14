require 'rails_helper'

RSpec.describe "customers/new", type: :view do
  before(:each) do
    assign(:customer, Customer.new(
      :name => "MyString",
      :address => "MyText",
      :gender => "MyString",
      :age => 1
    ))
  end

  it "renders new customer form" do
    render

    assert_select "form[action=?][method=?]", customers_path, "post" do

      assert_select "input#customer_name[name=?]", "customer[name]"

      assert_select "textarea#customer_address[name=?]", "customer[address]"

      assert_select "input#customer_gender[name=?]", "customer[gender]"

      assert_select "input#customer_age[name=?]", "customer[age]"
    end
  end
end
