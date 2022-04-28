class BlogController < ApplicationController
  def index
    @blogs = Blog.all
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.create(blog_params)
    if @blog.valid?
      redirect_to '/blogs'
    end

    def destroy
    @blog = blog.find(params[:id])
    @blog.destroy
    redirect_to '/blogs', :notice => "Your blog has been deleted"
    end
    
  end

  private
  def blog_params
    params.require(:blog).permit(:title, :content)
  end
end
