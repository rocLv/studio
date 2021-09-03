require 'rails_helper'

RSpec.describe "courses/edit", type: :view do
  before(:each) do
    @course = assign(:course, Course.create!(
      name: "MyString",
      lessons_count: 1,
      students_count: 1,
      period: 1,
      price_cent: 1,
      current_price_cent: 1,
      coach_id: 1,
      desc: "MyString"
    ))
  end

  it "renders the edit course form" do
    render

    assert_select "form[action=?][method=?]", course_path(@course), "post" do

      assert_select "input[name=?]", "course[name]"

      assert_select "input[name=?]", "course[lessons_count]"

      assert_select "input[name=?]", "course[students_count]"

      assert_select "input[name=?]", "course[period]"

      assert_select "input[name=?]", "course[price_cent]"

      assert_select "input[name=?]", "course[current_price_cent]"

      assert_select "input[name=?]", "course[coach_id]"

      assert_select "input[name=?]", "course[desc]"
    end
  end
end
