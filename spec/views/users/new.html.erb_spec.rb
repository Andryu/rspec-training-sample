require 'rails_helper'

RSpec.describe "users/new", type: :view do
  before(:each) do
    assign(:user, User.new(
      :name => "MyString",
      :nickname => "MyString",
      :entity_status => "MyString",
      :age => 1
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "input#user_name[name=?]", "user[name]"

      assert_select "input#user_nickname[name=?]", "user[nickname]"

      assert_select "input#user_entity_status[name=?]", "user[entity_status]"

      assert_select "input#user_age[name=?]", "user[age]"
    end
  end
end
