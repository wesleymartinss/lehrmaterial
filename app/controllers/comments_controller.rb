
class CommentsController < ApplicationController
  def index
    @comments = Comment.all

    render json: @comments
  end

  def show
    @comment = Comment.find(params[:id])

    render json: @comment
  end

  def create
    @comment = Comment.new(comment_params)

    if @comment.save
      render json: @comment
    else
      render json: { error: @comment.errors.messages }, status: 422
    end
  end

  def update
    @comment = Comment.find(params[:id])

    if @comment.update(comment_params)
      render json: @comment
    else
      render json: { error: @comment.errors.messages }, status: 422
    end
  end

  def destroy
    @comment = Comment.find(params[:id])

    if @comment.destroy
      head :no_content
    else
      render json: {error: comment.errors.messages }, status: 422
    end
  end

  private

  def comment_params
    params.permit(:user_id, :post_id, :content)
  end
end