defmodule Kumite.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      KumiteWeb.Telemetry,
      # Start the Ecto repository
      Kumite.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: Kumite.PubSub},
      # Start Finch
      {Finch, name: Kumite.Finch},
      # Start the Endpoint (http/https)
      KumiteWeb.Endpoint
      # Start a worker by calling: Kumite.Worker.start_link(arg)
      # {Kumite.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Kumite.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    KumiteWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
