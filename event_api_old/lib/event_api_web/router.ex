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

  # scope "/", EventApiWeb do
  #   pipe_through :browser

  #   get "/", PageController, :index
  # end

  scope "/api", EventApiWeb do
    pipe_through :api

    # POST request
    resources "/events", EventController, only: [:index, :show]
  end
end
