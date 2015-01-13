require 'rails_helper'

describe PostsController do

  describe 'GET index' do
    it 'assigns all posts as @posts' do
      post = create :post
      get :index
      expect(assigns(:posts)).to eq([post])
    end
  end

  describe 'GET show' do
    it 'assigns the requested post as @post' do
      post = create :post
      get :show, id: post.to_param
      expect(assigns(:post)).to eq(post)
    end
  end
end
