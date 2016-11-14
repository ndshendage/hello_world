require 'rails_helper'

RSpec.describe "animals/new", type: :view do
  before(:each) do
    assign(:animal, Animal.new(
      :name => "MyString",
      :location => "MyString",
      :age => 1,
      :description => "MyText"
    ))
  end

  it "renders new animal form" do
    render

    assert_select "form[action=?][method=?]", animals_path, "post" do

      assert_select "input#animal_name[name=?]", "animal[name]"

      assert_select "input#animal_location[name=?]", "animal[location]"

      assert_select "input#animal_age[name=?]", "animal[age]"

      assert_select "textarea#animal_description[name=?]", "animal[description]"
    end
  end
end
