# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :justdraw_cats,
  ecto_repos: [JustdrawCats.Repo]

# Configures the endpoint
config :justdraw_cats, JustdrawCatsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "iiEbSjZYjNAviUZi2amh2wfmHyY70AYb15oMni3z/SNTlCq+84dEiM21+O7nDnDp",
  render_errors: [view: JustdrawCatsWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: JustdrawCats.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
