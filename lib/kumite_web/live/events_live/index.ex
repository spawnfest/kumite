defmodule KumiteWeb.EventsLive.Index do
  use KumiteWeb, :live_view

  def render(assigns) do
    ~H"""
    <h1>Hello events</h1>
    """
  end

  def mount(_params, _session, socket) do
    {:ok, socket}
  end
end
