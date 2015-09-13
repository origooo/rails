class PostsController < ApplicationController
	def index
		@posts = Post.order('created_at DESC').page(params[:page]).per(2).includes(:images,:comments)
	end

	def show
		@post = Post.find(params[:id])
	end

	def new
		@post = Post.new
		@post.images.build
	end

	def edit
		@post = Post.find(params[:id])
		@post.images.build
	end

	def create
		@post = Post.new(post_params)

		if @post.save
			redirect_to post_path(@post)
		else
			render 'new'
		end
	end

	def update
		@post = Post.find(params[:id])

		if @post.update(post_params)
			redirect_to post_path(@post)
		else
			render 'edit'
		end
	end

	def destroy
		@post = Post.find(params[:id])
		@post.destroy

		redirect_to posts_path
	end

	private
		def post_params
			params.require(:post).permit(:title, :introduction, :text, :author, :published, images_attributes: [:id, :name, :filename, :_destroy])
		end
end
