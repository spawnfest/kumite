defmodule KumiteWeb.FightersLive.Index do
  use KumiteWeb, :live_view

  def render(assigns) do
    ~H"""
    <h1>Hello fighters</h1>
    """
  end

  def mount(_params, _session, socket) do
    {:ok, socket}
  end
end
