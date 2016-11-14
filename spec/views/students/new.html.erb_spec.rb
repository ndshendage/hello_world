require 'rails_helper'

RSpec.describe "students/new", type: :view do
  before(:each) do
    assign(:student, Student.new(
      :name => "MyString",
      :gender => "MyString",
      :address => "MyText",
      :age => 1,
      :resume => "MyString"
    ))
  end

  it "renders new student form" do
    render

    assert_select "form[action=?][method=?]", students_path, "post" do

      assert_select "input#student_name[name=?]", "student[name]"

      assert_select "input#student_gender[name=?]", "student[gender]"

      assert_select "textarea#student_address[name=?]", "student[address]"

      assert_select "input#student_age[name=?]", "student[age]"

      assert_select "input#student_resume[name=?]", "student[resume]"
    end
  end
end
