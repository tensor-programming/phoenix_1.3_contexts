defmodule Scheduler.Repo.Migrations.CreateCompanies do
  use Ecto.Migration

  def change do
    create table(:companies) do
      add :name, :string

      timestamps()
    end

    create table(:companies_users) do
      add :company_id, references(:companies, on_delete: :nothing), null: false
      add :user_id, references(:users, on_delete: :nothing), null: false
      add :relasionship, :string, null: false 
    end

    unique_index(:companies_users, [:company_id, :user_id], name: "companies_users_index")

    alter table(:schedulings) do
      add :company_id, references(:companies, on_delete: :nothing), null: false
    end
  end

end
