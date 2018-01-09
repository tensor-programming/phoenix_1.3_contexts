defmodule SchedulerWeb.PageController do
  use SchedulerWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
