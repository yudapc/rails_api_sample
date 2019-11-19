class ArticlesController < ApplicationController
  before_action :set_article, only: [ :show, :update ]

  def index
    articles = Article.published
    serializer(true, "data articles", articles, :ok)
  end

  def show
    serializer(true, "data detail", @article, :ok)
  end

  def create
    @article = Article.create(article_param)
    if @article.save
      serializer(true, "Create succeess", @article, :created)
    else
      serializer(true, "Create failed", @article.errors, :unprocessable_entity)
    end
  end

  def update
    if @article.update(article_param)
      serializer(true, "Update Success", @article, :ok)
    else 
      serializer(false, "Update failed", @article.errors, :unprocessable_entity)
    end
   end

  private
  def serializer(success, message, data, status)
    render json: { success: success, message: message, data: data }, include: [
      category: { 
        only: [:id, :name]
      }
    ], status: status
  end

  def article_param
    params.require(:article).permit(
      :title,
      :category_id,
      :content_body,
      :publiished
    )
  end

  def set_article
    @article = Article.find(params[:id])
   end
end
