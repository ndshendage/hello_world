require 'rails_helper'

RSpec.describe "people/show", type: :view do
  before(:each) do
    @person = assign(:person, Person.create!(
      :name => "Name",
      :address => "MyText",
      :gender => "Gender",
      :age => 2,
      :country => "Country",
      :state => "State",
      :city => "City",
      :is_disable => false,
      :skills => "Skills"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Gender/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Country/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Skills/)
  end
end
