require 'rails_helper'

RSpec.describe "students/index", type: :view do
  before(:each) do
    assign(:students, [
      Student.create!(
        :name => "Name",
        :gender => "Gender",
        :address => "MyText",
        :age => 2,
        :resume => "Resume"
      ),
      Student.create!(
        :name => "Name",
        :gender => "Gender",
        :address => "MyText",
        :age => 2,
        :resume => "Resume"
      )
    ])
  end

  it "renders a list of students" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Gender".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Resume".to_s, :count => 2
  end
end
