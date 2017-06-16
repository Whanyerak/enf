class CommentsController < ApplicationController
  def create
    @topic = Topic.find(params[:topic_id])
    @comment = @topic.comments.build(comment_params)
    @comment.user = current_user

    if @comment.save
      redirect_to topic_path(@topic), notice: 'Votre commentaire a été ajouté.'
    else
      @comments = @topic.comments.includes(:user)
      render 'topics/show'
    end
  end

  def destroy
    @topic   = Topic.find(params[:topic_id])
    @comment = Comment.find(params[:id])

    @comment.destroy
    redirect_to topic_path(@topic), notice: 'Commentaire supprimé avec succès.'
  end

  private
    def comment_params
      params.require(:comment).permit(:body)
    end
end
