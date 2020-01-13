defmodule EventApiWeb.ArticleController do
  use EventApiWeb, :controller
  alias EventApi.Management
  alias EventApi.Management.Article

  action_fallback EventApiWeb.FallbackController

  def index(conn, _params) do
    articles = Management.list_articles()
    render(conn, "index.json-api", data: articles)
  end

  def create(conn, %{"article" => article_params}) do
    with {:ok, %Article{} = article} <- Management.create_article(article_params) do
      conn
      |> put_status(:created)
      |> put_resp_header("location", Routes.article_path(conn, :show, article))
      |> render("show.json-api",data: article)
    end
  end

  def show(conn, %{"id" => id}) do
    article = Management.get_article!(id)
    render(conn, "show.json-api",data: article)
  end

  def update(conn, %{"id" => id, "article" => article_params}) do
    article = Management.get_article!(id)

    with {:ok, %Article{} = article} <- Management.update_article(article, article_params) do
      render(conn, "show.json-api",data: article)
    end
  end

  def delete(conn, %{"id" => id}) do
    article = Management.get_article!(id)

    with {:ok, %Article{}} <- Management.delete_article(article) do
      send_resp(conn, :no_content, "")
    end
  end
end
