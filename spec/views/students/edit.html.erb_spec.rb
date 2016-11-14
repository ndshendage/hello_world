require 'rails_helper'

RSpec.describe "students/edit", type: :view do
  before(:each) do
    @student = assign(:student, Student.create!(
      :name => "MyString",
      :gender => "MyString",
      :address => "MyText",
      :age => 1,
      :resume => "MyString"
    ))
  end

  it "renders the edit student form" do
    render

    assert_select "form[action=?][method=?]", student_path(@student), "post" do

      assert_select "input#student_name[name=?]", "student[name]"

      assert_select "input#student_gender[name=?]", "student[gender]"

      assert_select "textarea#student_address[name=?]", "student[address]"

      assert_select "input#student_age[name=?]", "student[age]"

      assert_select "input#student_resume[name=?]", "student[resume]"
    end
  end
end
