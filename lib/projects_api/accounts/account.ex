defmodule ProjectsApi.Accounts.Account do
  use Ecto.Schema
  import Ecto.Changeset

  schema "accounts" do
    field :email, :string
    field :hashed_password, :string
    has_one :user, ProjectsApi.Users.User

    timestamps()
  end

  @doc false
  def changeset(account, attrs) do
    account
    |> cast(attrs, [:email, :hashed_password])
    |> validate_required([:email, :hashed_password])
    |> validate_format(:email, ~r/^[^\s]+@[^\s]+$/, "Must be a valid email address")
    |> validate_length(:email, max: 160)
    |> unique_constraint(:email)
  end
end
