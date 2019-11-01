defmodule Timesheets.Repo.Migrations.AddManager do
  use Ecto.Migration

   def change do
    alter table("users") do
      add :is_manager, :boolean, default: false, null: false
    end
  end
end
