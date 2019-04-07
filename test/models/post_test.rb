require 'test_helper'

class PostTest < ActiveSupport::TestCase
  def setup
    @post = Post.new(title: 'Things to do in Denver When You\'re dead', body: "This song is...")
  end

  test 'Post body cannot be blank' do
    @post.body = ''
    assert_not @post.valid?
  end

  test 'Post Title cannot be blank' do
    @post.title = ''
    assert_not @post.valid?
  end

  test 'Post Title cannot be longer than 144 characters' do
    @post.title = "x" * 145
    assert_not @post.valid?
  end

  test 'Post is valid if it has a title and a body' do
    assert @post.valid?
  end
end
