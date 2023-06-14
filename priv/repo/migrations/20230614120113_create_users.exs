defmodule ProjectsApi.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :full_name, :string
      add :biography, :text
      add :account_id, references(:accounts, on_delete: :delete_all)

      timestamps()
    end

    create index(:users, [:account_id, :full_name])
  end
end
