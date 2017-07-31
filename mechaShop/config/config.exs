# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :mechaShop,
  ecto_repos: [MechaShop.Repo]

# Configures the endpoint
config :mechaShop, MechaShopWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "VosDyfBg/dntKdtAguE2y5e4f7y7ljXLDE3+4vb1DbVs5FJZlPCVzdyO0zQjNE70",
  render_errors: [view: MechaShopWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: MechaShop.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
