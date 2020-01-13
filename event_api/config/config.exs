# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :event_api,
  ecto_repos: [EventApi.Repo]

config :phoenix, :json_library, Jason

# Configures the endpoint
config :event_api, EventApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "tfzn3zYdGMMmWcrYneUfbCxADkqMxD08NaJ11hdrqB0L1Cch6kgcqFFn4ky+itaj",
  render_errors: [view: EventApiWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: EventApi.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]


config :mime, :types, %{
  "application/vnd.api+json" => ["json-api"]
}

config :phoenix, :format_encoders,
  "json-api": Jason  # doesn't work with Poison

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
