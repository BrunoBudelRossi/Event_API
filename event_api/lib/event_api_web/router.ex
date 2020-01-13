defmodule EventApiWeb.Router do
  use EventApiWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  pipeline :json_api do
    plug :accepts, ["json-api"]
    plug JaSerializer.Deserializer
  end

  # scope "/", EventApiWeb do
  #   pipe_through :browser

  #   get "/", PageController, :index
  # end

  scope "/api", EventApiWeb do
    pipe_through :json_api

    # POST request
    resources "/events", EventController, only: [:index, :show]
    resources "/articles", ArticleController, only: [:index, :show, :create]
  end
end
