require 'rails_helper'

RSpec.describe "admin/cars/new", type: :view do
  before(:each) do
    assign(:admin_car, Car.new(
      :manufactuture => "MyString",
      :model => "MyString",
      :year => 1
    ))
  end

  it "renders new admin_car form" do
    render

    assert_select "form[action=?][method=?]", admin_cars_path, "post" do

      assert_select "input[name=?]", "admin_car[manufactuture]"

      assert_select "input[name=?]", "admin_car[model]"

      assert_select "input[name=?]", "admin_car[year]"
    end
  end
end
