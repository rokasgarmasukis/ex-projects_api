defmodule ProjectsApi.Repo do
  use Ecto.Repo,
    otp_app: :projects_api,
    adapter: Ecto.Adapters.Postgres
end
