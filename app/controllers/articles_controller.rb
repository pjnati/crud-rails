class ArticlesController < ApplicationController
  
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(params.require(:article).permit(:title, :description))
    if @article.save
      # can use keys notice or alert (used for error or when somethings goes wrong)
      flash[:notice] = "Article was created successfully!"
      # redirect_to article_path(@article.id) can also be v
      redirect_to @article
    else
      render 'new'
    end
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(params.require(:article).permit(:title, :description))
      flash[:notice] = "Article was succesffully updated!"
      redirect_to @article
    else
      render 'edit'
    end
  end

end