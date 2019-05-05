class ArticlesController < ApplicationController


    def index
        @articles = Article.all
    end

    def show
        @article = Article.find(params[:id])
        # Within that hash we can find the :id from the URL by accessing the key params[:id]. 
        # Use this inside the show method of ArticlesController along with the class method find on the Article class:
    end
    
end
