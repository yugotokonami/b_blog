class ArticlesController < ApplicationController

  def index
    @articles = Article.order("created_at DESC")
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update(article_params)
    if @article.valid?
      redirect_to article_path(@article.id)
    else
      render :edit
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  private

  def article_params
    params.require(:article).permit(:image, :title, :text, :category_id, ).merge(user_id: current_user.id)
  end

end
