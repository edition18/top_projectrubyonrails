class ArticlesController < ApplicationController

    include ArticlesHelper

    def index
        @articles = Article.all
    end

    def show
        @article = Article.find(params[:id])
        # Within that hash we can find the :id from the URL by accessing the key params[:id]. 
        # Use this inside the show method of ArticlesController along with the class method find on the Article class:
        @comment = Comment.new
        @comment.article_id = @article.id
    end

    def new
        @article = Article.new

    end

    def create
        @article = Article.new(article_params)
        @article.save
        redirect_to article_path(@article)
    end

    def destroy
        @article = Article.find(params[:id]).destroy
        redirect_to articles_path

        #NOTE THE S
    end
    
    def edit
        @article = Article.find(params[:id])
    end

    def update
        @article = Article.find(params[:id])
        @article.update(article_params)

        flash.notice = "Article '#{@article.title}' updated!"

        redirect_to article_path(@article)
    end
    
end
