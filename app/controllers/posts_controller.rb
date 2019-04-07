class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
    @post = set_post
  end

  def new
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit
    @post ||= set_post
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:success] = "Post published successfully"
      redirect_to @post
    else
      flash[:error] = "Something went wrong"
      render action: 'new'
    end
  end

  def update
    if @post.update(post_params)
      redirect_to @post
    else
      render action :update
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :body)
    end
end
