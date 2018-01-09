defmodule Scheduler.Schedule.Shift do
  use Ecto.Schema
  import Ecto.Changeset
  alias Scheduler.Schedule.Shift


  schema "shifts" do
    field :end_time, :naive_datetime
    field :start_time, :naive_datetime
    field :user_id, :id
    field :schedule_id, :id

    timestamps()
  end

  @doc false
  def changeset(%Shift{} = shift, attrs) do
    shift
    |> cast(attrs, [:start_time, :end_time, :user_id, :schedule_id])
    |> validate_required([:start_time, :end_time, :user_id, :schedule_id])
  end
end
