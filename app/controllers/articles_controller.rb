class ArticlesController < ApplicationController
  def index
    articles = Article.all
    serializer(articles)
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
