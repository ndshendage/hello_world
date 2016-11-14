require 'rails_helper'

RSpec.describe "animals/index", type: :view do
  before(:each) do
    assign(:animals, [
      Animal.create!(
        :name => "Name",
        :location => "Location",
        :age => 2,
        :description => "MyText"
      ),
      Animal.create!(
        :name => "Name",
        :location => "Location",
        :age => 2,
        :description => "MyText"
      )
    ])
  end

  it "renders a list of animals" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
