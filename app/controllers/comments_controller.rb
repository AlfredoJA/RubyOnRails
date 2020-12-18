class CommentsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
  	#binding.pry
  	@article = Article.find(params[:article_id])
    @comment = @article.comments.create(commenter: params[:commenter],body: params[:body])
    #redirect_to article_path(@article)
    @message = "llegué"
    respond_to do |format|
        format.json{render json: { message: @message }, status: 200} 
    end
  end

  def show
  	@article = Article.find(params[:article_id])
  	@comentarios = @article.comments.all
  end


  #private
   # def comment_params
    #  params.require(:comment).permit(:commenter, :body)
    #end
end


     