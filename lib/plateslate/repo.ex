defmodule PlateSlate.Repo do
  use Ecto.Repo,
    otp_app: :plateslate,
    adapter: Ecto.Adapters.Postgres
end
