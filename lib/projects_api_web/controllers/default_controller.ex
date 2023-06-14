defmodule ProjectsApiWeb.DefaultController do
  use ProjectsApiWeb, :controller

  def index(conn, _params) do
    text conn, "We are live! - #{Mix.env()}"
  end

end
