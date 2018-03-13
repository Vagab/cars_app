require 'rails_helper'

RSpec.describe "admin/cars/edit", type: :view do
  before(:each) do
    @admin_car = assign(:admin_car, Car.create!(
      :manufactuture => "MyString",
      :model => "MyString",
      :year => 1
    ))
  end

  it "renders the edit admin_car form" do
    render

    assert_select "form[action=?][method=?]", admin_car_path(@admin_car), "post" do

      assert_select "input[name=?]", "admin_car[manufactuture]"

      assert_select "input[name=?]", "admin_car[model]"

      assert_select "input[name=?]", "admin_car[year]"
    end
  end
end
