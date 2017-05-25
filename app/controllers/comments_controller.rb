class CommentsController < ApplicationController
	def create

		@topic = Topic.find(params[:topic_id])
    @comment = @topic.comments.build(comment_params)
    @comment.user = current_user
    @comment.save

    redirect_to topic_path(@topic)
	end

	private
		def comment_params
			params.require(:comment).permit(:body)
		end
end