defmodule Timesheets.Repo.Migrations.CreateTask do
  use Ecto.Migration

  def change do
    create table(:task) do
      add :jobcode, :string
      add :workhours, :decimal
      add :user_id, references(:users, on_delete: :nothing)

      timestamps()
    end

    create index(:task, [:user_id])
  end
end
