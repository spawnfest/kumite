defmodule KumiteWeb.FightsLive.Index do
  use KumiteWeb, :live_view

  def render(assigns) do
    ~H"""
    <video width="320" height="240" controls>
      <source src="https://www.youtube.com/embed/JrqBudJd2YM" type="video/webm" />
    </video>
    """
  end

  def mount(_params, _session, socket) do
    {:ok, socket}
  end
end
