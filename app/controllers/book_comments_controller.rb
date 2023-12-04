class BookCommentsController < ApplicationController

  def create
  end

  def destroy
    BookComment.find(params[:id]).destroy
    redirect_to book_path(params[:book_id])
  end


  private

  def book_comment_params
    params.require(:book_comment).permit(:comment)
  end

end
