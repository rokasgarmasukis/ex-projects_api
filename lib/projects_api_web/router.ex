defmodule ProjectsApiWeb.Router do
  use ProjectsApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ProjectsApiWeb do
    pipe_through :api

    get "/", DefaultController, :index
  end
end
