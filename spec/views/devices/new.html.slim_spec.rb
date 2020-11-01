require 'rails_helper'

RSpec.describe "devices/new", type: :view do
  before(:each) do
    assign(:device, Device.new(
      name: "MyString",
      category: nil
    ))
  end

  it "renders new device form" do
    render

    assert_select "form[action=?][method=?]", devices_path, "post" do

      assert_select "input[name=?]", "device[name]"

      assert_select "input[name=?]", "device[category_id]"
    end
  end
end
