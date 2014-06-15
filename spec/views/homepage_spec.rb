require 'spec_helper'

describe 'pages/homepage.html.erb' do

  it 'uses a giant picture if one exists' do
    post = FactoryGirl.create(:post, title: "cool robot")
    assign :featured_post, post

    render template: 'pages/homepage'
    rendered.should contain('cool robot')
  end

  it 'should not explode if there is no featured post'

end
