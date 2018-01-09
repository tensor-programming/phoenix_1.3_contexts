defmodule Scheduler.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset
  alias Scheduler.Accounts.User


  schema "users" do
    field :email, :string
    field :name, :string
    field :password, :string
    many_to_many :company, Scheduler.Companies.Company, join_through: Scheduler.Companies.CompaniesUsers

    timestamps()
  end

  @doc false
  def changeset(%User{} = user, attrs) do
    user
    |> cast(attrs, [:email, :name, :password])
    |> validate_required([:email, :name, :password])
    |> validate_format(:email, ~r/.+@.+\..+/, [message: "Please input a valid email"])
    |> unique_constraint(:email)
  end
end
