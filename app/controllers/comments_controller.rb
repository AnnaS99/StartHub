class CommentsController < ApplicationController
    def create
        @idea = Idea.find(params[:idea_id])
        @comment = @idea.comments.new(comment_params)
        if @comment.save
            flash.notice = "Comment saved"
            redirect_to idea_path(@idea)
        else
            flash.alert = "Comment could not be saved"
            redirect_to idea_path(@idea)
        end
    end

    def destroy
        @idea = Idea.find(params[:idea_id])
        @comment = @idea.comments.find(params[:id])
        if @comment.destroy
            flash.notice = "Comment deleted!"
            redirect_to idea_path(@idea)
        else
            flash.alert = "Something went wrong"
            redirect_to idea_path(@idea)
        end            
     end

    def comment_params
        params.require(:comment).permit(
            :text,
            :name,
            :email
        )
    end
end