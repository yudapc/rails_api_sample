class ArticlesController < ApplicationController
  def index
    articles = Article.all
    serializer(articles)
  end

  def show
    article = Article.find(params[:id])
    serializer(article)
  end

  private
  def serializer(data)
    render json: { data: data }, include: [
      category: { 
        only: [:id, :name]
      }
    ]
  end
end
