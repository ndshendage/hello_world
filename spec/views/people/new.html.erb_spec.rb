require 'rails_helper'

RSpec.describe "people/new", type: :view do
  before(:each) do
    assign(:person, Person.new(
      :name => "MyString",
      :address => "MyText",
      :gender => "MyString",
      :age => 1,
      :country => "MyString",
      :state => "MyString",
      :city => "MyString",
      :is_disable => false,
      :skills => "MyString"
    ))
  end

  it "renders new person form" do
    render

    assert_select "form[action=?][method=?]", people_path, "post" do

      assert_select "input#person_name[name=?]", "person[name]"

      assert_select "textarea#person_address[name=?]", "person[address]"

      assert_select "input#person_gender[name=?]", "person[gender]"

      assert_select "input#person_age[name=?]", "person[age]"

      assert_select "input#person_country[name=?]", "person[country]"

      assert_select "input#person_state[name=?]", "person[state]"

      assert_select "input#person_city[name=?]", "person[city]"

      assert_select "input#person_is_disable[name=?]", "person[is_disable]"

      assert_select "input#person_skills[name=?]", "person[skills]"
    end
  end
end
