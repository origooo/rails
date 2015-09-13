class CommentsController < ApplicationController
  def index
  end

  def create
  	@comment = Comment.new(comment_params) # works for show.html.erb
  	@comment.post_id = params[:post_id] # works for show.html.erb

  	@comment.save

    if params.has_key?(:return_to_show_post)
      redirect_to post_path(Post.find(params[:post_id]))
    else
  	 redirect_to posts_path
    end
  end

  def destroy
  end

  private
	  def comment_params
	  	params.require(:comment).permit(:user, :text)
	  	# params.require(:comment).permit(:user, :text, :post_id)
	  end
end
