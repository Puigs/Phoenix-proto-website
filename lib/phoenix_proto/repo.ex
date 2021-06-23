defmodule PhoenixProto.Repo do
  use Ecto.Repo,
    otp_app: :phoenix_proto,
    adapter: Ecto.Adapters.Postgres
end
