class CategoriesController < ApplicationController
  def index
    categories = Category.all
    serializer(categories)
  end

  def show
    category = Category.find(params[:id])
    category_json = category.as_json
    category_json[:total_views] = total_views(category.articles)
    category_json[:articles] = category.articles.as_json(only: [:id, :title, :views_count])

    serializer(category_json)
  end

  private
  def serializer(data)
    render json: { data: data }, include: [
      articles: {
        only: [:id, :title, :views_count]
      }
    ]
  end

  def total_views(articles)
    total_views = 0
    articles.map do |article|
      total_views += article.views_count
    end
    return total_views
  end
end
