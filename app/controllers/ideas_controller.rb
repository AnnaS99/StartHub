class IdeasController < ApplicationController
    def index
        @ideas = Idea.all
    end

    def new
        @idea = Idea.new
    end

    def create

        @idea = Idea.new(idea_params)

        if @idea.save
            flash.notice = "Your idea has been uploaded!"
            redirect_to ideas_path
        else
            flash.alert = "Sorry, something went wrong:("
            render :new
        end
    end

    def edit
        @idea = Idea.find(params[:id])
    end
    
    def update
        @idea = Idea.find(params[:id])
        if @idea.update(idea_params)
            flash.notice = "Idea updated"
            redirect_to ideas_path
        else
            flash.alert = "Could not update Idea"
            render :edit 
        end
    end

    def destroy
        @idea = Idea.find(params[:id])
        if @idea.destroy
            flash.notice = "Idea deleted"
            redirect_to ideas_path
        else
            flash.alert = "Something went wrong"
            redirect_to ideas_path
        end
    end

    def show
        @idea = Idea.find(params[:id])
    end

    def idea_params
        params.require(:idea).permit(
            :title,
            :sub,
            :description,
            :target,
            :b2bc,
            :help,
            :keywords
        )
    end
end
