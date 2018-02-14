require 'rails_helper'

RSpec.describe "users/edit", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :name => "MyString",
      :nickname => "MyString",
      :entity_status => "MyString",
      :age => 1
    ))
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do

      assert_select "input#user_name[name=?]", "user[name]"

      assert_select "input#user_nickname[name=?]", "user[nickname]"

      assert_select "input#user_entity_status[name=?]", "user[entity_status]"

      assert_select "input#user_age[name=?]", "user[age]"
    end
  end
end
