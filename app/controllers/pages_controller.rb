class PagesController < ApplicationController
  def about
  end

  def landing
    @post = Post.last
  end

  def contact
  end
end
