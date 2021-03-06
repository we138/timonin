require 'rails_helper'

describe 'posts/show' do
  before(:each) do
    @post = assign(:post, create(:post))
    @comments = assign(:comment, Kaminari.paginate_array([
      create(:comment, post: @post)
    ]).page(1))
  end

  it 'renders attributes in <p>' do
    render
  end
end
