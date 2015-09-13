class ImagesController < ApplicationController

	# def create
	# 	@post = Post.find(params[:post_id])
	# 	@image = @post.images.create(image_params)
	# 	redirect_to post_path(@post) # Note: No show.html.erb implemented for posts. Other note, is this redirect really called?
	# end

	# def destroy
	# 	@post = Post.find(params[:post_id])
	# 	@image = @post.images.find(params[:id])
	# 	@image.destroy
	# 	redirect_to posts_path
	# end

	private
		def image_params
			params.require(:image).permit(:name, :filename)
		end
end
