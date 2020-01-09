defmodule EventApiWeb.PageController do
  use EventApiWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
