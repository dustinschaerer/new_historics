class PostsController < ApplicationController

    before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def show
    @post_images = @post.build_images.all
  end

  def new
    @post = Post.new
    @categories = Category.all
    @build_image = @post.build_images.build
  end

  def edit
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)

    respond_to do |format|
      if @post.save

        # params[:build_images_attributes]['image'].each do |i|
        #   @build_image = @post.build_images.create!(:image => i, post_id: @post.id)
        # end

        format.html { redirect_to @post, notice: 'Post was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    # raise params.inspect

    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_post
      @post = Post.friendly.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:category_id, :title, :content, :teaser, :slug, :published_on, :published, :admin_user_id, :article_image, build_images_attributes: [:id, :image, :post_id])
    end
end

