require 'spec_helper'

describe "movies/index.html.erb" do
  before(:each) do
    assign(:movies, [
      stub_model(Movie,
        :title => "Title",
        :description => "Description"
      ),
      stub_model(Movie,
        :title => "Title",
        :description => "Description"
      )
    ])
  end

  it "renders a list of movies" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
