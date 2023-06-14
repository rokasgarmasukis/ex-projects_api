defmodule ProjectsApi.Users.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :biography, :string
    field :full_name, :string
    belongs_to :account, ProjectsApi.Accounts.Account

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:full_name, :biography, :account_id])
    |> validate_required([:account_id])
  end
end
