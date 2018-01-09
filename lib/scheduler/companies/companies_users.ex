defmodule Scheduler.Companies.CompaniesUsers do
  use Ecto.Schema
  import Ecto.Changeset
  alias Scheduler.Companies.CompaniesUsers
  alias Scheduler.Companies.Company
  alias Scheduler.Accounts.User

  @default_user_relationship :member

  schema "companies_users" do
    has_one :company, Company
    has_one :user, User
    field :relationship, :string, default: @default_user_relationship
  end

  @doc false
  def changeset(%CompaniesUsers{} = companies_users, attrs) do
    companies_users
    |> cast(attrs, [:company, :user, :relasionship])
    |> validate_required([:company, :user, :relasionship])
    |> validate_inclusion(:relasionship, [@default_user_relationship] )
    |> unique_constraint(:company, name: "companies_users_index")
  end
end