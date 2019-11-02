defmodule Timesheets.Repo.Migrations.AddManager do
  use Ecto.Migration

  def change do
    alter table("users") do
      add :manager_id, references(:managers)
    end
  end
end
