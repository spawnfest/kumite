defmodule Kumite.Repo do
  use Ecto.Repo,
    otp_app: :kumite,
    adapter: Ecto.Adapters.Postgres
end
