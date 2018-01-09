defmodule Scheduler.Schedule.Scheduling do
  use Ecto.Schema
  import Ecto.Changeset
  alias Scheduler.Schedule.Scheduling


  schema "schedulings" do
    field :name, :string
    belongs_to :company, Scheduler.Companies.Company
    timestamps()
  end

  @doc false
  def changeset(%Scheduling{} = scheduling, attrs) do
    scheduling
    |> cast(attrs, [:name, :company_id])
    |> validate_required([:name, :company_id])
  end
end
