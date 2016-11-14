require 'rails_helper'

RSpec.describe "people/index", type: :view do
  before(:each) do
    assign(:people, [
      Person.create!(
        :name => "Name",
        :address => "MyText",
        :gender => "Gender",
        :age => 2,
        :country => "Country",
        :state => "State",
        :city => "City",
        :is_disable => false,
        :skills => "Skills"
      ),
      Person.create!(
        :name => "Name",
        :address => "MyText",
        :gender => "Gender",
        :age => 2,
        :country => "Country",
        :state => "State",
        :city => "City",
        :is_disable => false,
        :skills => "Skills"
      )
    ])
  end

  it "renders a list of people" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Gender".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Skills".to_s, :count => 2
  end
end
