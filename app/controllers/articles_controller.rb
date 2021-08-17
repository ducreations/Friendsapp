class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(params.require(:article).permit(:title, :author, :headline, :body))
    if @article.save 
      redirect_to articles_path, notice: "Article published"
    else
      render :new
    end
  end
end
