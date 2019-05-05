class ArticlesController < ApplicationController


    def index
        @articles = Article.all
    end

    def show
        @article = Article.find(params[:id])
        # Within that hash we can find the :id from the URL by accessing the key params[:id]. 
        # Use this inside the show method of ArticlesController along with the class method find on the Article class:
    end

    def new
        @article = Article.new

    end

    def create
        @article = Article.new
        @article.title = params[:article][:title]
        @article.save
        redirect_to article_path(@article)
    end
    
    
end
