class PostsController < ApplicationController
	before_filter :authenticate_user!, except: [:index]

	def index
		@posts = Post.all.page( params[:page] )
	end

	def new
		@post = current_user.posts.new
	end

	def create
		@post = current_user.posts.new( post_params )
		if @post.save
  		flash[:success] = "Post added successfully."
  		redirect_to root_path
  	else
  		flash[:error] = "There was a problem saving the post."
  		render action: :new
  	end
	end

	def edit
		@post = current_user.posts.find(params[:id])
	end

	def update
		@post = current_user.post.find(params[:id])
    if @post.update_attributes( post_params )
      flash[:success] = "Saved post updates."
      redirect_to root_path
    else
      flash[:error] = "The post could not be saved."
      render action: :edit
    end
	end

	def destroy
		 @post = current_user.post.find(params[:id])
    if @post.destroy
      flash[:success] = "The post was deleted."
    else
      flash[:error] = "The post could not be deleted."
    end
    redirect_to root_path
	end

	private

	def post_params
		params.require(:post).permit(:title, :body)
	end
end
