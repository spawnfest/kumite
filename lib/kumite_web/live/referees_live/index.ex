defmodule KumiteWeb.RefereesLive.Index do
  use KumiteWeb, :live_view

  def render(assigns) do
    ~H"""
    <h1>Hello referees</h1>
    """
  end

  def mount(_params, _session, socket) do
    {:ok, socket}
  end
end
