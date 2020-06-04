class StoriesController < ApplicationController
    def index
        @stories = Story.all
    end

    def show
        @stories = Story.find(params[:id])
    end

    def new
        @stories = Story.new
    end

    def create
        @stories = Story.new(story_params)
        if @stories.save
            #Handle a successful save
            flash[:success] = "Welcome to DHA!"
            redirect_to @stories
        else
            render 'new'
        end
    end

    def destroy
        @stories = Story.find(params[:id])
        @stories.destroy
        render '/'
    end

    private
        def story_params
            params.require(:story) .permit(:title, :content, :translate)
        end
end