defmodule Timesheets.Repo.Migrations.CreateSheets do
  use Ecto.Migration

  def change do
    create table(:sheets) do
      add :approved, :boolean, default: false, null: false
      add :job1, :string
      add :hour1, :float
      add :job2, :string
      add :hour2, :float
      add :job3, :string
      add :hour3, :float
      add :job4, :string
      add :hour4, :float
      add :job5, :string
      add :hour5, :float
      add :job6, :string
      add :hour6, :float
      add :job7, :string
      add :hour7, :float
      add :job8, :string
      add :hour8, :float
      add :worker_id, references(:workers, on_delete: :nothing)
      add :date, :date
      timestamps()
    endend
