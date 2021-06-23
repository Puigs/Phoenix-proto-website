# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phoenix_proto,
  ecto_repos: [PhoenixProto.Repo]

# Configures the endpoint
config :phoenix_proto, PhoenixProtoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "P0VE91ur24UlGhaC+7x9kASM5/BnFeq5luG9t3dkh7jB1KoW/X+ejiHBCwGdWHrT",
  render_errors: [view: PhoenixProtoWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: PhoenixProto.PubSub,
  live_view: [signing_salt: "8H9Z1gpc"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
