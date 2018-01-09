defmodule Scheduler.Repo.Migrations.CreateSchedulings do
  use Ecto.Migration

  def change do
    create table(:schedulings) do
      add :name, :string, null: false

      timestamps()
    end
    
    alter table(:shifts) do
      add :schedule_id, references(:schedulings, on_delete: :nothing), null: false
    end
  end
end
