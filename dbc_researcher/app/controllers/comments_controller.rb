class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    p params
    @comment = Proposal.find_by(id: params[:proposal_id]).comments.create(comment_params.merge({user_id: current_user.id}))
    # @comment = current_user.comments.create(comment_params)

    if @comment.valid?
      p "it saved"
    else
      p "it didn't save"
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:comment_text)
  end
end
