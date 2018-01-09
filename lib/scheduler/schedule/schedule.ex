defmodule Scheduler.Schedule do
  @moduledoc """
  The Schedule context.
  """

  import Ecto.Query, warn: false
  alias Scheduler.Repo

  alias Scheduler.Schedule.Shift

  @doc """
  Returns the list of shifts.

  ## Examples

      iex> list_shifts()
      [%Shift{}, ...]

  """
  def list_shifts do
    Repo.all(Shift)
  end

  @doc """
  Gets a single shift.

  Raises `Ecto.NoResultsError` if the Shift does not exist.

  ## Examples

      iex> get_shift!(123)
      %Shift{}

      iex> get_shift!(456)
      ** (Ecto.NoResultsError)

  """
  def get_shift!(id), do: Repo.get!(Shift, id)

  @doc """
  Creates a shift.

  ## Examples

      iex> create_shift(%{field: value})
      {:ok, %Shift{}}

      iex> create_shift(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_shift(attrs \\ %{}) do
    %Shift{}
    |> Shift.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a shift.

  ## Examples

      iex> update_shift(shift, %{field: new_value})
      {:ok, %Shift{}}

      iex> update_shift(shift, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_shift(%Shift{} = shift, attrs) do
    shift
    |> Shift.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Shift.

  ## Examples

      iex> delete_shift(shift)
      {:ok, %Shift{}}

      iex> delete_shift(shift)
      {:error, %Ecto.Changeset{}}

  """
  def delete_shift(%Shift{} = shift) do
    Repo.delete(shift)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking shift changes.

  ## Examples

      iex> change_shift(shift)
      %Ecto.Changeset{source: %Shift{}}

  """
  def change_shift(%Shift{} = shift) do
    Shift.changeset(shift, %{})
  end

  alias Scheduler.Schedule.Scheduling

  @doc """
  Returns the list of schedulings.

  ## Examples

      iex> list_schedulings()
      [%Scheduling{}, ...]

  """
  def list_schedulings do
    Repo.all(Scheduling)
  end

  @doc """
  Gets a single scheduling.

  Raises `Ecto.NoResultsError` if the Scheduling does not exist.

  ## Examples

      iex> get_scheduling!(123)
      %Scheduling{}

      iex> get_scheduling!(456)
      ** (Ecto.NoResultsError)

  """
  def get_scheduling!(id), do: Repo.get!(Scheduling, id)

  @doc """
  Creates a scheduling.

  ## Examples

      iex> create_scheduling(%{field: value})
      {:ok, %Scheduling{}}

      iex> create_scheduling(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_scheduling(attrs \\ %{}) do
    %Scheduling{}
    |> Scheduling.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a scheduling.

  ## Examples

      iex> update_scheduling(scheduling, %{field: new_value})
      {:ok, %Scheduling{}}

      iex> update_scheduling(scheduling, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_scheduling(%Scheduling{} = scheduling, attrs) do
    scheduling
    |> Scheduling.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Scheduling.

  ## Examples

      iex> delete_scheduling(scheduling)
      {:ok, %Scheduling{}}

      iex> delete_scheduling(scheduling)
      {:error, %Ecto.Changeset{}}

  """
  def delete_scheduling(%Scheduling{} = scheduling) do
    Repo.delete(scheduling)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking scheduling changes.

  ## Examples

      iex> change_scheduling(scheduling)
      %Ecto.Changeset{source: %Scheduling{}}

  """
  def change_scheduling(%Scheduling{} = scheduling) do
    Scheduling.changeset(scheduling, %{})
  end
end
